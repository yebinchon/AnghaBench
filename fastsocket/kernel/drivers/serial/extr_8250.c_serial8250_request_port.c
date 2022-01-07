
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 scalar_t__ PORT_RSA ;
 int serial8250_release_std_resource (struct uart_8250_port*) ;
 int serial8250_request_rsa_resource (struct uart_8250_port*) ;
 int serial8250_request_std_resource (struct uart_8250_port*) ;

__attribute__((used)) static int serial8250_request_port(struct uart_port *port)
{
 struct uart_8250_port *up = (struct uart_8250_port *)port;
 int ret = 0;

 ret = serial8250_request_std_resource(up);
 if (ret == 0 && up->port.type == PORT_RSA) {
  ret = serial8250_request_rsa_resource(up);
  if (ret < 0)
   serial8250_release_std_resource(up);
 }

 return ret;
}
