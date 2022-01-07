
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jme_ring {int next_to_clean; scalar_t__ next_to_use; int * bufinf; scalar_t__ dma; scalar_t__ dmaalloc; int * desc; int * alloc; } ;
struct jme_adapter {int rx_ring_size; TYPE_1__* pdev; struct jme_ring* rxring; } ;
struct TYPE_2__ {int dev; } ;


 int RX_RING_ALLOC_SIZE (int) ;
 int atomic_set (int *,int ) ;
 int dma_free_coherent (int *,int ,int *,scalar_t__) ;
 int jme_free_rx_buf (struct jme_adapter*,int) ;
 int kfree (int *) ;

__attribute__((used)) static void
jme_free_rx_resources(struct jme_adapter *jme)
{
 int i;
 struct jme_ring *rxring = &(jme->rxring[0]);

 if (rxring->alloc) {
  if (rxring->bufinf) {
   for (i = 0 ; i < jme->rx_ring_size ; ++i)
    jme_free_rx_buf(jme, i);
   kfree(rxring->bufinf);
  }

  dma_free_coherent(&(jme->pdev->dev),
      RX_RING_ALLOC_SIZE(jme->rx_ring_size),
      rxring->alloc,
      rxring->dmaalloc);
  rxring->alloc = ((void*)0);
  rxring->desc = ((void*)0);
  rxring->dmaalloc = 0;
  rxring->dma = 0;
  rxring->bufinf = ((void*)0);
 }
 rxring->next_to_use = 0;
 atomic_set(&rxring->next_to_clean, 0);
}
