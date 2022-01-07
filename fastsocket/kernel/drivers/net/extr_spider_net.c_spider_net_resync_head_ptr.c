
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_descr_chain {int num_desc; int lock; struct spider_net_descr* head; } ;
struct spider_net_descr {int hwdescr; struct spider_net_descr* next; } ;
struct spider_net_card {struct spider_net_descr_chain rx_chain; } ;


 int SPIDER_NET_DESCR_CARDOWNED ;
 int SPIDER_NET_DESCR_NOT_IN_USE ;
 int spider_net_get_descr_status (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void spider_net_resync_head_ptr(struct spider_net_card *card)
{
 unsigned long flags;
 struct spider_net_descr_chain *chain = &card->rx_chain;
 struct spider_net_descr *descr;
 int i, status;


 descr = chain->head;
 status = spider_net_get_descr_status(descr->hwdescr);

 if (status == SPIDER_NET_DESCR_NOT_IN_USE)
  return;

 spin_lock_irqsave(&chain->lock, flags);

 descr = chain->head;
 status = spider_net_get_descr_status(descr->hwdescr);
 for (i=0; i<chain->num_desc; i++) {
  if (status != SPIDER_NET_DESCR_CARDOWNED) break;
  descr = descr->next;
  status = spider_net_get_descr_status(descr->hwdescr);
 }
 chain->head = descr;

 spin_unlock_irqrestore(&chain->lock, flags);
}
