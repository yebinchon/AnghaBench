
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spider_net_descr_chain {TYPE_3__* head; struct spider_net_descr* tail; } ;
struct spider_net_descr {struct spider_net_descr* next; int bus_addr; TYPE_2__* prev; } ;
struct spider_net_card {struct spider_net_descr_chain rx_chain; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_1__* hwdescr; } ;
struct TYPE_4__ {int next_descr_addr; } ;


 int ENOMEM ;
 int spider_net_enable_rxdmac (struct spider_net_card*) ;
 int spider_net_free_rx_chain_contents (struct spider_net_card*) ;
 scalar_t__ spider_net_prepare_rx_descr (struct spider_net_card*,TYPE_3__*) ;
 int spider_net_refill_rx_chain (struct spider_net_card*) ;

__attribute__((used)) static int
spider_net_alloc_rx_skbs(struct spider_net_card *card)
{
 struct spider_net_descr_chain *chain = &card->rx_chain;
 struct spider_net_descr *start = chain->tail;
 struct spider_net_descr *descr = start;


 do {
  descr->prev->hwdescr->next_descr_addr = descr->bus_addr;
  descr = descr->next;
 } while (descr != start);




 if (spider_net_prepare_rx_descr(card, chain->head))
  goto error;
 else
  chain->head = chain->head->next;



 spider_net_refill_rx_chain(card);
 spider_net_enable_rxdmac(card);
 return 0;

error:
 spider_net_free_rx_chain_contents(card);
 return -ENOMEM;
}
