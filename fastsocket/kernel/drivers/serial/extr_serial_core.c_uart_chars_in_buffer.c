
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {TYPE_1__* uart_port; int xmit; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_circ_chars_pending (int *) ;

__attribute__((used)) static int uart_chars_in_buffer(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&state->uart_port->lock, flags);
 ret = uart_circ_chars_pending(&state->xmit);
 spin_unlock_irqrestore(&state->uart_port->lock, flags);
 return ret;
}
