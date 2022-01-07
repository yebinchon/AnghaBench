
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_state {int dummy; } ;
struct uart_port {int lock; struct uart_state* state; } ;
struct ioc4_port {int * ip_port; struct ioc4_control* ip_control; } ;
struct ioc4_control {int dummy; } ;


 int ENODEV ;
 struct ioc4_port* get_ioc4_port (struct uart_port*,int) ;
 int ic4_startup_local (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ic4_startup(struct uart_port *the_port)
{
 int retval;
 struct ioc4_port *port;
 struct ioc4_control *control;
 struct uart_state *state;
 unsigned long port_flags;

 if (!the_port)
  return -ENODEV;
 port = get_ioc4_port(the_port, 1);
 if (!port)
  return -ENODEV;
 state = the_port->state;

 control = port->ip_control;
 if (!control) {
  port->ip_port = ((void*)0);
  return -ENODEV;
 }


 spin_lock_irqsave(&the_port->lock, port_flags);
 retval = ic4_startup_local(the_port);
 spin_unlock_irqrestore(&the_port->lock, port_flags);
 return retval;
}
