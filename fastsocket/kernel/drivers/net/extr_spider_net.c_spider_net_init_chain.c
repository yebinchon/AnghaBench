
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spider_net_hw_descr {scalar_t__ next_descr_addr; int dmac_cmd_status; } ;
struct spider_net_descr_chain {int num_desc; int dma_addr; struct spider_net_descr* ring; struct spider_net_descr* tail; struct spider_net_descr* head; int lock; struct spider_net_hw_descr* hwring; } ;
struct spider_net_descr {int bus_addr; struct spider_net_descr* prev; struct spider_net_descr* next; struct spider_net_hw_descr* hwdescr; } ;
struct spider_net_card {TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SPIDER_NET_DESCR_NOT_IN_USE ;
 struct spider_net_hw_descr* dma_alloc_coherent (int *,size_t,int*,int ) ;
 int memset (struct spider_net_descr*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
spider_net_init_chain(struct spider_net_card *card,
         struct spider_net_descr_chain *chain)
{
 int i;
 struct spider_net_descr *descr;
 struct spider_net_hw_descr *hwdescr;
 dma_addr_t buf;
 size_t alloc_size;

 alloc_size = chain->num_desc * sizeof(struct spider_net_hw_descr);

 chain->hwring = dma_alloc_coherent(&card->pdev->dev, alloc_size,
  &chain->dma_addr, GFP_KERNEL);

 if (!chain->hwring)
  return -ENOMEM;

 memset(chain->ring, 0, chain->num_desc * sizeof(struct spider_net_descr));


 descr = chain->ring;
 hwdescr = chain->hwring;
 buf = chain->dma_addr;
 for (i=0; i < chain->num_desc; i++, descr++, hwdescr++) {
  hwdescr->dmac_cmd_status = SPIDER_NET_DESCR_NOT_IN_USE;
  hwdescr->next_descr_addr = 0;

  descr->hwdescr = hwdescr;
  descr->bus_addr = buf;
  descr->next = descr + 1;
  descr->prev = descr - 1;

  buf += sizeof(struct spider_net_hw_descr);
 }

 (descr-1)->next = chain->ring;
 chain->ring->prev = descr-1;

 spin_lock_init(&chain->lock);
 chain->head = chain->ring;
 chain->tail = chain->ring;
 return 0;
}
