
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ctrl_lock; int read_wait; int ctrl_status; scalar_t__ packet; struct tty_struct* link; } ;


 int TIOCPKT_FLUSHWRITE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void pty_flush_buffer(struct tty_struct *tty)
{
 struct tty_struct *to = tty->link;
 unsigned long flags;

 if (!to)
  return;

 if (to->packet) {
  spin_lock_irqsave(&tty->ctrl_lock, flags);
  tty->ctrl_status |= TIOCPKT_FLUSHWRITE;
  wake_up_interruptible(&to->read_wait);
  spin_unlock_irqrestore(&tty->ctrl_lock, flags);
 }
}
