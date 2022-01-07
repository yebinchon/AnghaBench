
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {int flags; int isdnloop_lock; TYPE_3__ rb_timer; } ;
typedef TYPE_1__ isdnloop_card ;


 int ISDNLOOP_FLAGS_B1ACTIVE ;
 int ISDNLOOP_FLAGS_B2ACTIVE ;
 int ISDNLOOP_FLAGS_RBTIMER ;
 scalar_t__ ISDNLOOP_TIMER_BCREAD ;
 int add_timer (TYPE_3__*) ;
 int isdnloop_bchan_send (TYPE_1__*,int) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
isdnloop_pollbchan(unsigned long data)
{
 isdnloop_card *card = (isdnloop_card *) data;
 unsigned long flags;

 if (card->flags & ISDNLOOP_FLAGS_B1ACTIVE)
  isdnloop_bchan_send(card, 0);
 if (card->flags & ISDNLOOP_FLAGS_B2ACTIVE)
  isdnloop_bchan_send(card, 1);
 if (card->flags & (ISDNLOOP_FLAGS_B1ACTIVE | ISDNLOOP_FLAGS_B2ACTIVE)) {

  spin_lock_irqsave(&card->isdnloop_lock, flags);
  card->rb_timer.expires = jiffies + ISDNLOOP_TIMER_BCREAD;
  add_timer(&card->rb_timer);
  card->flags |= ISDNLOOP_FLAGS_RBTIMER;
  spin_unlock_irqrestore(&card->isdnloop_lock, flags);
 } else
  card->flags &= ~ISDNLOOP_FLAGS_RBTIMER;
}
