
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int queue; } ;
struct rsxx_cardinfo {TYPE_1__ creg_ctrl; } ;


 int creg_kick_queue (struct rsxx_cardinfo*) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rsxx_kick_creg_queue(struct rsxx_cardinfo *card)
{
 spin_lock_bh(&card->creg_ctrl.lock);
 if (!list_empty(&card->creg_ctrl.queue))
  creg_kick_queue(card);
 spin_unlock_bh(&card->creg_ctrl.lock);
}
