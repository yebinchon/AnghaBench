
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {unsigned int rx_ring_size; unsigned int tx_ring_size; TYPE_2__* tx_buffers; int pdev; TYPE_1__* rx_buffers; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {TYPE_3__* skb; int mapping; } ;
struct TYPE_4__ {TYPE_3__* skb; int mapping; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int RX_PKT_SIZE ;
 int dev_kfree_skb (TYPE_3__*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void adm8211_free_rings(struct ieee80211_hw *dev)
{
 struct adm8211_priv *priv = dev->priv;
 unsigned int i;

 for (i = 0; i < priv->rx_ring_size; i++) {
  if (!priv->rx_buffers[i].skb)
   continue;

  pci_unmap_single(
   priv->pdev,
   priv->rx_buffers[i].mapping,
   RX_PKT_SIZE, PCI_DMA_FROMDEVICE);

  dev_kfree_skb(priv->rx_buffers[i].skb);
 }

 for (i = 0; i < priv->tx_ring_size; i++) {
  if (!priv->tx_buffers[i].skb)
   continue;

  pci_unmap_single(priv->pdev,
     priv->tx_buffers[i].mapping,
     priv->tx_buffers[i].skb->len,
     PCI_DMA_TODEVICE);

  dev_kfree_skb(priv->tx_buffers[i].skb);
 }
}
