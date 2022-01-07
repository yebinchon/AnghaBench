
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_BCM63XX ;
 int UART_CONFIG_TYPE ;
 scalar_t__ bcm_uart_request_port (struct uart_port*) ;

__attribute__((used)) static void bcm_uart_config_port(struct uart_port *port, int flags)
{
 if (flags & UART_CONFIG_TYPE) {
  if (bcm_uart_request_port(port))
   return;
  port->type = PORT_BCM63XX;
 }
}
