
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_UARTLITE ;
 int ulite_request_port (struct uart_port*) ;

__attribute__((used)) static void ulite_config_port(struct uart_port *port, int flags)
{
 if (!ulite_request_port(port))
  port->type = PORT_UARTLITE;
}
