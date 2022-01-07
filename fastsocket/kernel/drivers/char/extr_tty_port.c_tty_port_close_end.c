
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ closing; TYPE_1__* termios; } ;
struct tty_port {int flags; int lock; int close_wait; int open_wait; scalar_t__ close_delay; scalar_t__ blocked_open; } ;
struct TYPE_2__ {int c_cflag; } ;


 int ASYNC_CLOSING ;
 int ASYNC_NORMAL_ACTIVE ;
 int HUPCL ;
 int jiffies_to_msecs (scalar_t__) ;
 int msleep_interruptible (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 int tty_port_lower_dtr_rts (struct tty_port*) ;
 int wake_up_interruptible (int *) ;

void tty_port_close_end(struct tty_port *port, struct tty_struct *tty)
{
 unsigned long flags;

 tty_ldisc_flush(tty);

 if (tty->termios->c_cflag & HUPCL)
  tty_port_lower_dtr_rts(port);

 spin_lock_irqsave(&port->lock, flags);
 tty->closing = 0;

 if (port->blocked_open) {
  spin_unlock_irqrestore(&port->lock, flags);
  if (port->close_delay) {
   msleep_interruptible(
    jiffies_to_msecs(port->close_delay));
  }
  spin_lock_irqsave(&port->lock, flags);
  wake_up_interruptible(&port->open_wait);
 }
 port->flags &= ~(ASYNC_NORMAL_ACTIVE | ASYNC_CLOSING);
 wake_up_interruptible(&port->close_wait);
 spin_unlock_irqrestore(&port->lock, flags);
}
