
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_descr_chain {int num_desc; struct spider_net_descr* tail; } ;
struct spider_net_descr {int hwdescr; struct spider_net_descr* next; } ;
struct spider_net_card {struct spider_net_descr_chain rx_chain; } ;


 int SPIDER_NET_DESCR_CARDOWNED ;
 int SPIDER_NET_DESCR_NOT_IN_USE ;
 int spider_net_get_descr_status (int ) ;

__attribute__((used)) static int spider_net_resync_tail_ptr(struct spider_net_card *card)
{
 struct spider_net_descr_chain *chain = &card->rx_chain;
 struct spider_net_descr *descr;
 int i, status;


 descr = chain->tail;
 status = spider_net_get_descr_status(descr->hwdescr);

 for (i=0; i<chain->num_desc; i++) {
  if ((status != SPIDER_NET_DESCR_CARDOWNED) &&
      (status != SPIDER_NET_DESCR_NOT_IN_USE)) break;
  descr = descr->next;
  status = spider_net_get_descr_status(descr->hwdescr);
 }
 chain->tail = descr;

 if ((i == chain->num_desc) || (i == 0))
  return 1;
 return 0;
}
