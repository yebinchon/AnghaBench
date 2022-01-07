
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {int (* pm ) (struct uart_port*,unsigned int,unsigned int) ;} ;


 int serial8250_set_sleep (struct uart_8250_port*,int) ;
 int stub1 (struct uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static void
serial8250_pm(struct uart_port *port, unsigned int state,
       unsigned int oldstate)
{
 struct uart_8250_port *p = (struct uart_8250_port *)port;

 serial8250_set_sleep(p, state != 0);

 if (p->pm)
  p->pm(port, state, oldstate);
}
