
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunsu_port {int type_probed; } ;
struct uart_port {int type; } ;


 int UART_CONFIG_TYPE ;

__attribute__((used)) static void sunsu_config_port(struct uart_port *port, int flags)
{
 struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;

 if (flags & UART_CONFIG_TYPE) {





  port->type = up->type_probed;
 }
}
