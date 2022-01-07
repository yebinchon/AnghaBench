
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_rx_queue {int lock; scalar_t__ free_count; scalar_t__ write; scalar_t__ read; int rx_used; TYPE_1__* pool; int rx_free; } ;
struct ipw_priv {int pci_dev; } ;
struct TYPE_2__ {int list; int * skb; int dma_addr; } ;


 int INIT_LIST_HEAD (int *) ;
 int IPW_RX_BUF_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_FREE_BUFFERS ;
 int RX_QUEUE_SIZE ;
 int dev_kfree_skb (int *) ;
 int list_add_tail (int *,int *) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipw_rx_queue_reset(struct ipw_priv *priv,
          struct ipw_rx_queue *rxq)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&rxq->lock, flags);

 INIT_LIST_HEAD(&rxq->rx_free);
 INIT_LIST_HEAD(&rxq->rx_used);


 for (i = 0; i < RX_FREE_BUFFERS + RX_QUEUE_SIZE; i++) {


  if (rxq->pool[i].skb != ((void*)0)) {
   pci_unmap_single(priv->pci_dev, rxq->pool[i].dma_addr,
      IPW_RX_BUF_SIZE, PCI_DMA_FROMDEVICE);
   dev_kfree_skb(rxq->pool[i].skb);
   rxq->pool[i].skb = ((void*)0);
  }
  list_add_tail(&rxq->pool[i].list, &rxq->rx_used);
 }



 rxq->read = rxq->write = 0;
 rxq->free_count = 0;
 spin_unlock_irqrestore(&rxq->lock, flags);
}
