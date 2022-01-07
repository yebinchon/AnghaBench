
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int stopped; TYPE_2__* ops; int ctrl_lock; TYPE_1__* link; int ctrl_status; } ;
struct TYPE_4__ {int (* stop ) (struct tty_struct*) ;} ;
struct TYPE_3__ {int read_wait; scalar_t__ packet; } ;


 int POLLIN ;
 int TIOCPKT_START ;
 int TIOCPKT_STOP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct tty_struct*) ;
 int wake_up_interruptible_poll (int *,int ) ;

void stop_tty(struct tty_struct *tty)
{
 unsigned long flags;
 spin_lock_irqsave(&tty->ctrl_lock, flags);
 if (tty->stopped) {
  spin_unlock_irqrestore(&tty->ctrl_lock, flags);
  return;
 }
 tty->stopped = 1;
 if (tty->link && tty->link->packet) {
  tty->ctrl_status &= ~TIOCPKT_START;
  tty->ctrl_status |= TIOCPKT_STOP;
  wake_up_interruptible_poll(&tty->link->read_wait, POLLIN);
 }
 spin_unlock_irqrestore(&tty->ctrl_lock, flags);
 if (tty->ops->stop)
  (tty->ops->stop)(tty);
}
