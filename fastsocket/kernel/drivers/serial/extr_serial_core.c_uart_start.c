
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_state {struct uart_port* uart_port; } ;
struct uart_port {int lock; } ;
struct tty_struct {struct uart_state* driver_data; } ;


 int __uart_start (struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void uart_start(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port = state->uart_port;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 __uart_start(tty);
 spin_unlock_irqrestore(&port->lock, flags);
}
