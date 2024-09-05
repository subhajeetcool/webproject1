FROM httpd:latest
RUN apt update -y
RUN apt install apache2 -y
COPY src/ /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]