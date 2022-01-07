
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {struct uart_port* uart_port; } ;
struct uart_port {int lock; TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* stop_tx ) (struct uart_port*) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*) ;

__attribute__((used)) static void uart_stop(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port = state->uart_port;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 port->ops->stop_tx(port);
 spin_unlock_irqrestore(&port->lock, flags);
}
