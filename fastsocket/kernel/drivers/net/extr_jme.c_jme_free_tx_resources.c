
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jme_ring {int nr_free; int next_to_clean; scalar_t__ next_to_use; struct jme_buffer_info* bufinf; scalar_t__ dma; scalar_t__ dmaalloc; int * desc; int * alloc; } ;
struct jme_buffer_info {scalar_t__ start_xmit; scalar_t__ nr_desc; scalar_t__ len; scalar_t__ mapping; int * skb; } ;
struct jme_adapter {int tx_ring_size; TYPE_1__* pdev; struct jme_ring* txring; } ;
struct TYPE_2__ {int dev; } ;


 int TX_RING_ALLOC_SIZE (int) ;
 int atomic_set (int *,int ) ;
 int dev_kfree_skb (int *) ;
 int dma_free_coherent (int *,int ,int *,scalar_t__) ;
 int kfree (struct jme_buffer_info*) ;

__attribute__((used)) static void
jme_free_tx_resources(struct jme_adapter *jme)
{
 int i;
 struct jme_ring *txring = &(jme->txring[0]);
 struct jme_buffer_info *txbi;

 if (txring->alloc) {
  if (txring->bufinf) {
   for (i = 0 ; i < jme->tx_ring_size ; ++i) {
    txbi = txring->bufinf + i;
    if (txbi->skb) {
     dev_kfree_skb(txbi->skb);
     txbi->skb = ((void*)0);
    }
    txbi->mapping = 0;
    txbi->len = 0;
    txbi->nr_desc = 0;
    txbi->start_xmit = 0;
   }
   kfree(txring->bufinf);
  }

  dma_free_coherent(&(jme->pdev->dev),
      TX_RING_ALLOC_SIZE(jme->tx_ring_size),
      txring->alloc,
      txring->dmaalloc);

  txring->alloc = ((void*)0);
  txring->desc = ((void*)0);
  txring->dmaalloc = 0;
  txring->dma = 0;
  txring->bufinf = ((void*)0);
 }
 txring->next_to_use = 0;
 atomic_set(&txring->next_to_clean, 0);
 atomic_set(&txring->nr_free, 0);
}
