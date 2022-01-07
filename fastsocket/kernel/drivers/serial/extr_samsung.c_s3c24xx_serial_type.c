
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;







__attribute__((used)) static const char *s3c24xx_serial_type(struct uart_port *port)
{
 switch (port->type) {
 case 131:
  return "S3C2410";
 case 129:
  return "S3C2440";
 case 130:
  return "S3C2412";
 case 128:
  return "S3C6400/10";
 default:
  return ((void*)0);
 }
}
