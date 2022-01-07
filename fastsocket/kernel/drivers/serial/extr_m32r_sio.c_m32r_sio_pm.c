
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sio_port {int (* pm ) (struct uart_port*,unsigned int,unsigned int) ;} ;
struct uart_port {int dummy; } ;


 int stub1 (struct uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static void m32r_sio_pm(struct uart_port *port, unsigned int state,
 unsigned int oldstate)
{
 struct uart_sio_port *up = (struct uart_sio_port *)port;

 if (up->pm)
  up->pm(port, state, oldstate);
}
