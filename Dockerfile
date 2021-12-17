FROM amazonlinux:latest

RUN yum update -y

RUN yum install httpd -y

COPY ./web/index.html /var/www/html

CMD ["httpd", "-D", "FOREGROUND"]

EXPOSE 80
