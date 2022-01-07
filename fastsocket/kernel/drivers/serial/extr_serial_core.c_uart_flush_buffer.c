
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {int xmit; struct uart_port* uart_port; } ;
struct uart_port {int lock; TYPE_1__* ops; } ;
struct tty_struct {int index; struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* flush_buffer ) (struct uart_port*) ;} ;


 int WARN_ON (int) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*) ;
 int tty_wakeup (struct tty_struct*) ;
 int uart_circ_clear (int *) ;

__attribute__((used)) static void uart_flush_buffer(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port;
 unsigned long flags;





 if (!state) {
  WARN_ON(1);
  return;
 }

 port = state->uart_port;
 pr_debug("uart_flush_buffer(%d) called\n", tty->index);

 spin_lock_irqsave(&port->lock, flags);
 uart_circ_clear(&state->xmit);
 if (port->ops->flush_buffer)
  port->ops->flush_buffer(port);
 spin_unlock_irqrestore(&port->lock, flags);
 tty_wakeup(tty);
}
