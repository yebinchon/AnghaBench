
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int lock; int rb_timer; } ;
typedef TYPE_1__ icn_card ;


 int ICN_FLAGS_B1ACTIVE ;
 int ICN_FLAGS_B2ACTIVE ;
 int ICN_FLAGS_RBTIMER ;
 scalar_t__ ICN_TIMER_BCREAD ;
 int icn_pollbchan_receive (int,TYPE_1__*) ;
 int icn_pollbchan_send (int,TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
icn_pollbchan(unsigned long data)
{
 icn_card *card = (icn_card *) data;
 unsigned long flags;

 if (card->flags & ICN_FLAGS_B1ACTIVE) {
  icn_pollbchan_receive(0, card);
  icn_pollbchan_send(0, card);
 }
 if (card->flags & ICN_FLAGS_B2ACTIVE) {
  icn_pollbchan_receive(1, card);
  icn_pollbchan_send(1, card);
 }
 if (card->flags & (ICN_FLAGS_B1ACTIVE | ICN_FLAGS_B2ACTIVE)) {

  spin_lock_irqsave(&card->lock, flags);
  mod_timer(&card->rb_timer, jiffies+ICN_TIMER_BCREAD);
  card->flags |= ICN_FLAGS_RBTIMER;
  spin_unlock_irqrestore(&card->lock, flags);
 } else
  card->flags &= ~ICN_FLAGS_RBTIMER;
}
