
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int UART_CONFIG_TYPE ;
 int siu_check_type (struct uart_port*) ;
 int siu_request_port (struct uart_port*) ;

__attribute__((used)) static void siu_config_port(struct uart_port *port, int flags)
{
 if (flags & UART_CONFIG_TYPE) {
  port->type = siu_check_type(port);
  (void)siu_request_port(port);
 }
}
