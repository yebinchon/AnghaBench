
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct ioc3_port {int ip_flags; } ;


 int INPUT_ENABLE ;
 struct ioc3_port* get_ioc3_port (struct uart_port*) ;

__attribute__((used)) static void ic3_stop_rx(struct uart_port *the_port)
{
 struct ioc3_port *port = get_ioc3_port(the_port);

 if (port)
  port->ip_flags &= ~INPUT_ENABLE;
}
