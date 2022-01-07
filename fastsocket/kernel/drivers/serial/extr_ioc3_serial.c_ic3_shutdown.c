
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delta_msr_wait; } ;
struct uart_state {TYPE_1__ port; } ;
struct uart_port {int lock; struct uart_state* state; } ;
struct ioc3_port {int dummy; } ;


 int N_ALL ;
 struct ioc3_port* get_ioc3_port (struct uart_port*) ;
 int set_notification (struct ioc3_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ic3_shutdown(struct uart_port *the_port)
{
 unsigned long port_flags;
 struct ioc3_port *port;
 struct uart_state *state;

 port = get_ioc3_port(the_port);
 if (!port)
  return;

 state = the_port->state;
 wake_up_interruptible(&state->port.delta_msr_wait);

 spin_lock_irqsave(&the_port->lock, port_flags);
 set_notification(port, N_ALL, 0);
 spin_unlock_irqrestore(&the_port->lock, port_flags);
}
