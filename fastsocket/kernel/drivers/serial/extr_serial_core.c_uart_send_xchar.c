
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {struct uart_port* uart_port; } ;
struct uart_port {char x_char; int lock; TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* start_tx ) (struct uart_port*) ;int (* send_xchar ) (struct uart_port*,char) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*,char) ;
 int stub2 (struct uart_port*) ;

__attribute__((used)) static void uart_send_xchar(struct tty_struct *tty, char ch)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port = state->uart_port;
 unsigned long flags;

 if (port->ops->send_xchar)
  port->ops->send_xchar(port, ch);
 else {
  port->x_char = ch;
  if (ch) {
   spin_lock_irqsave(&port->lock, flags);
   port->ops->start_tx(port);
   spin_unlock_irqrestore(&port->lock, flags);
  }
 }
}
