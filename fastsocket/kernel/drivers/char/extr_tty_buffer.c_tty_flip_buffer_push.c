
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int work; } ;
struct TYPE_4__ {TYPE_3__ work; int lock; TYPE_2__* tail; } ;
struct tty_struct {TYPE_1__ buf; scalar_t__ low_latency; } ;
struct TYPE_5__ {int used; int commit; } ;


 int flush_to_ldisc (int *) ;
 int schedule_delayed_work (TYPE_3__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void tty_flip_buffer_push(struct tty_struct *tty)
{
 unsigned long flags;
 spin_lock_irqsave(&tty->buf.lock, flags);
 if (tty->buf.tail != ((void*)0))
  tty->buf.tail->commit = tty->buf.tail->used;
 spin_unlock_irqrestore(&tty->buf.lock, flags);

 if (tty->low_latency)
  flush_to_ldisc(&tty->buf.work.work);
 else
  schedule_delayed_work(&tty->buf.work, 1);
}
