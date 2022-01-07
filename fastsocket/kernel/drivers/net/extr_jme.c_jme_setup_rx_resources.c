
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jme_ring {unsigned long dmaalloc; int * bufinf; scalar_t__ dma; int * desc; scalar_t__ alloc; int next_to_clean; scalar_t__ next_to_use; } ;
struct jme_buffer_info {int dummy; } ;
struct jme_adapter {int rx_ring_size; TYPE_1__* pdev; struct jme_ring* rxring; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ALIGN (unsigned long,int ) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int RING_DESC_ALIGN ;
 int RX_RING_ALLOC_SIZE (int) ;
 int atomic_set (int *,int ) ;
 scalar_t__ dma_alloc_coherent (int *,int ,unsigned long*,int ) ;
 int dma_free_coherent (int *,int ,scalar_t__,unsigned long) ;
 int jme_free_rx_resources (struct jme_adapter*) ;
 int jme_make_new_rx_buf (struct jme_adapter*,int) ;
 int jme_set_clean_rxdesc (struct jme_adapter*,int) ;
 int * kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
jme_setup_rx_resources(struct jme_adapter *jme)
{
 int i;
 struct jme_ring *rxring = &(jme->rxring[0]);

 rxring->alloc = dma_alloc_coherent(&(jme->pdev->dev),
       RX_RING_ALLOC_SIZE(jme->rx_ring_size),
       &(rxring->dmaalloc),
       GFP_ATOMIC);
 if (!rxring->alloc)
  goto err_set_null;




 rxring->desc = (void *)ALIGN((unsigned long)(rxring->alloc),
      RING_DESC_ALIGN);
 rxring->dma = ALIGN(rxring->dmaalloc, RING_DESC_ALIGN);
 rxring->next_to_use = 0;
 atomic_set(&rxring->next_to_clean, 0);

 rxring->bufinf = kmalloc(sizeof(struct jme_buffer_info) *
     jme->rx_ring_size, GFP_ATOMIC);
 if (unlikely(!(rxring->bufinf)))
  goto err_free_rxring;




 memset(rxring->bufinf, 0,
  sizeof(struct jme_buffer_info) * jme->rx_ring_size);
 for (i = 0 ; i < jme->rx_ring_size ; ++i) {
  if (unlikely(jme_make_new_rx_buf(jme, i))) {
   jme_free_rx_resources(jme);
   return -ENOMEM;
  }

  jme_set_clean_rxdesc(jme, i);
 }

 return 0;

err_free_rxring:
 dma_free_coherent(&(jme->pdev->dev),
     RX_RING_ALLOC_SIZE(jme->rx_ring_size),
     rxring->alloc,
     rxring->dmaalloc);
err_set_null:
 rxring->desc = ((void*)0);
 rxring->dmaalloc = 0;
 rxring->dma = 0;
 rxring->bufinf = ((void*)0);

 return -ENOMEM;
}
