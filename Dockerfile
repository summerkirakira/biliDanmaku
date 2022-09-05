FROM python:3.9
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN apt-get update -y
RUN apt-get install -y libmediainfo-dev
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py ./
CMD [ "python", "./main.py" ]