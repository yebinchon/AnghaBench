
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mwl8k_rx_queue {int * rxd; int rxd_dma; TYPE_2__* buf; } ;
struct mwl8k_priv {TYPE_1__* rxd_ops; int pdev; struct mwl8k_rx_queue* rxq; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_6__ {int * skb; } ;
struct TYPE_5__ {int rxd_size; } ;


 int MWL8K_RX_DESCS ;
 int MWL8K_RX_MAXSZ ;
 int PCI_DMA_FROMDEVICE ;
 int dma ;
 int dma_unmap_addr (TYPE_2__*,int ) ;
 int dma_unmap_addr_set (TYPE_2__*,int ,int ) ;
 int kfree (TYPE_2__*) ;
 int kfree_skb (int *) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void mwl8k_rxq_deinit(struct ieee80211_hw *hw, int index)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_rx_queue *rxq = priv->rxq + index;
 int i;

 if (rxq->rxd == ((void*)0))
  return;

 for (i = 0; i < MWL8K_RX_DESCS; i++) {
  if (rxq->buf[i].skb != ((void*)0)) {
   pci_unmap_single(priv->pdev,
      dma_unmap_addr(&rxq->buf[i], dma),
      MWL8K_RX_MAXSZ, PCI_DMA_FROMDEVICE);
   dma_unmap_addr_set(&rxq->buf[i], dma, 0);

   kfree_skb(rxq->buf[i].skb);
   rxq->buf[i].skb = ((void*)0);
  }
 }

 kfree(rxq->buf);
 rxq->buf = ((void*)0);

 pci_free_consistent(priv->pdev,
       MWL8K_RX_DESCS * priv->rxd_ops->rxd_size,
       rxq->rxd, rxq->rxd_dma);
 rxq->rxd = ((void*)0);
}
