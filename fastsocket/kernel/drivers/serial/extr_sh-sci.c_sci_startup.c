
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct sci_port {int (* enable ) (struct uart_port*) ;} ;


 int sci_request_irq (struct sci_port*) ;
 int sci_start_rx (struct uart_port*,int) ;
 int sci_start_tx (struct uart_port*) ;
 int stub1 (struct uart_port*) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static int sci_startup(struct uart_port *port)
{
 struct sci_port *s = to_sci_port(port);

 if (s->enable)
  s->enable(port);

 sci_request_irq(s);
 sci_start_tx(port);
 sci_start_rx(port, 1);

 return 0;
}
