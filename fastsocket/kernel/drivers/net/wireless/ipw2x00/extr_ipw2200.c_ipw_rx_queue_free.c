
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_rx_queue {TYPE_1__* pool; } ;
struct ipw_priv {int pci_dev; } ;
struct TYPE_2__ {int * skb; int dma_addr; } ;


 int IPW_RX_BUF_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_FREE_BUFFERS ;
 int RX_QUEUE_SIZE ;
 int dev_kfree_skb (int *) ;
 int kfree (struct ipw_rx_queue*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void ipw_rx_queue_free(struct ipw_priv *priv, struct ipw_rx_queue *rxq)
{
 int i;

 if (!rxq)
  return;

 for (i = 0; i < RX_QUEUE_SIZE + RX_FREE_BUFFERS; i++) {
  if (rxq->pool[i].skb != ((void*)0)) {
   pci_unmap_single(priv->pci_dev, rxq->pool[i].dma_addr,
      IPW_RX_BUF_SIZE, PCI_DMA_FROMDEVICE);
   dev_kfree_skb(rxq->pool[i].skb);
  }
 }

 kfree(rxq);
}
