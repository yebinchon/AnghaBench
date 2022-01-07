
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* tty; int delta_msr_wait; } ;
struct uart_state {TYPE_2__ port; } ;
struct uart_port {int lock; struct uart_state* state; } ;
struct ioc4_port {int ip_flags; int * ip_port; } ;
struct TYPE_3__ {int flags; } ;


 int N_ALL ;
 int PORT_INACTIVE ;
 int TTY_IO_ERROR ;
 struct ioc4_port* get_ioc4_port (struct uart_port*,int ) ;
 int set_bit (int ,int *) ;
 int set_notification (struct ioc4_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ic4_shutdown(struct uart_port *the_port)
{
 unsigned long port_flags;
 struct ioc4_port *port;
 struct uart_state *state;

 port = get_ioc4_port(the_port, 0);
 if (!port)
  return;

 state = the_port->state;
 port->ip_port = ((void*)0);

 wake_up_interruptible(&state->port.delta_msr_wait);

 if (state->port.tty)
  set_bit(TTY_IO_ERROR, &state->port.tty->flags);

 spin_lock_irqsave(&the_port->lock, port_flags);
 set_notification(port, N_ALL, 0);
 port->ip_flags = PORT_INACTIVE;
 spin_unlock_irqrestore(&the_port->lock, port_flags);
}
