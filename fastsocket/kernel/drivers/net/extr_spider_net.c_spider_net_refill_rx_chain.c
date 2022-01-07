
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spider_net_descr_chain {int lock; TYPE_1__* head; } ;
struct spider_net_card {struct spider_net_descr_chain rx_chain; } ;
struct TYPE_2__ {struct TYPE_2__* next; int hwdescr; } ;


 scalar_t__ SPIDER_NET_DESCR_NOT_IN_USE ;
 scalar_t__ spider_net_get_descr_status (int ) ;
 scalar_t__ spider_net_prepare_rx_descr (struct spider_net_card*,TYPE_1__*) ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
spider_net_refill_rx_chain(struct spider_net_card *card)
{
 struct spider_net_descr_chain *chain = &card->rx_chain;
 unsigned long flags;





 if (!spin_trylock_irqsave(&chain->lock, flags))
  return;

 while (spider_net_get_descr_status(chain->head->hwdescr) ==
   SPIDER_NET_DESCR_NOT_IN_USE) {
  if (spider_net_prepare_rx_descr(card, chain->head))
   break;
  chain->head = chain->head->next;
 }

 spin_unlock_irqrestore(&chain->lock, flags);
}
