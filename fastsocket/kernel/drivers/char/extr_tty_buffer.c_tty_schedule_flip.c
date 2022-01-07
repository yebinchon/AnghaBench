
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int work; int lock; TYPE_1__* tail; } ;
struct tty_struct {TYPE_2__ buf; } ;
struct TYPE_3__ {int used; int commit; } ;


 int schedule_delayed_work (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void tty_schedule_flip(struct tty_struct *tty)
{
 unsigned long flags;
 spin_lock_irqsave(&tty->buf.lock, flags);
 if (tty->buf.tail != ((void*)0))
  tty->buf.tail->commit = tty->buf.tail->used;
 spin_unlock_irqrestore(&tty->buf.lock, flags);
 schedule_delayed_work(&tty->buf.work, 1);
}
