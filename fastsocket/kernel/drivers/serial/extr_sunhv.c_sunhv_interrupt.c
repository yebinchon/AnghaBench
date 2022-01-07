
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct tty_struct {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct tty_struct* receive_chars (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transmit_chars (struct uart_port*) ;
 int tty_flip_buffer_push (struct tty_struct*) ;

__attribute__((used)) static irqreturn_t sunhv_interrupt(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 struct tty_struct *tty;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 tty = receive_chars(port);
 transmit_chars(port);
 spin_unlock_irqrestore(&port->lock, flags);

 if (tty)
  tty_flip_buffer_push(tty);

 return IRQ_HANDLED;
}
