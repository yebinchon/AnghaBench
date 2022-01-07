
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct tty_struct {TYPE_1__ buf; int flags; int read_wait; } ;


 int TTY_FLUSHING ;
 int TTY_FLUSHPENDING ;
 int __tty_buffer_flush (struct tty_struct*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;

void tty_buffer_flush(struct tty_struct *tty)
{
 unsigned long flags;
 spin_lock_irqsave(&tty->buf.lock, flags);




 if (test_bit(TTY_FLUSHING, &tty->flags)) {
  set_bit(TTY_FLUSHPENDING, &tty->flags);
  spin_unlock_irqrestore(&tty->buf.lock, flags);
  wait_event(tty->read_wait,
    test_bit(TTY_FLUSHPENDING, &tty->flags) == 0);
  return;
 } else
  __tty_buffer_flush(tty);
 spin_unlock_irqrestore(&tty->buf.lock, flags);
}
