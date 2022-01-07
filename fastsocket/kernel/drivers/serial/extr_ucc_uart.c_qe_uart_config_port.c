
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_CPM ;
 int UART_CONFIG_TYPE ;
 int qe_uart_request_port (struct uart_port*) ;

__attribute__((used)) static void qe_uart_config_port(struct uart_port *port, int flags)
{
 if (flags & UART_CONFIG_TYPE) {
  port->type = PORT_CPM;
  qe_uart_request_port(port);
 }
}
