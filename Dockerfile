from python:3.9.12-slim-buster

RUN apt update -y && apt install awscli -y
WORKDIR /app

copy . /app
RUN pip install -r requirements.txt

CMD ["python" , "app.py"]