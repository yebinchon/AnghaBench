
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int ctrl_lock; TYPE_1__* link; int ctrl_status; } ;
struct TYPE_2__ {int read_wait; scalar_t__ packet; } ;


 int TIOCPKT_FLUSHREAD ;
 int reset_buffer_flags (struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void n_tty_flush_buffer(struct tty_struct *tty)
{
 unsigned long flags;

 reset_buffer_flags(tty);

 if (!tty->link)
  return;

 spin_lock_irqsave(&tty->ctrl_lock, flags);
 if (tty->link->packet) {
  tty->ctrl_status |= TIOCPKT_FLUSHREAD;
  wake_up_interruptible(&tty->link->read_wait);
 }
 spin_unlock_irqrestore(&tty->ctrl_lock, flags);
}
