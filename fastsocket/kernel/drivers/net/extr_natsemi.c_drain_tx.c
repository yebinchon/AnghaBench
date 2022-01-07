
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_dropped; } ;
struct netdev_private {TYPE_2__** tx_skbuff; TYPE_1__ stats; int * tx_dma; int pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int len; } ;


 int PCI_DMA_TODEVICE ;
 int TX_RING_SIZE ;
 int dev_kfree_skb (TYPE_2__*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void drain_tx(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 int i;

 for (i = 0; i < TX_RING_SIZE; i++) {
  if (np->tx_skbuff[i]) {
   pci_unmap_single(np->pci_dev,
    np->tx_dma[i], np->tx_skbuff[i]->len,
    PCI_DMA_TODEVICE);
   dev_kfree_skb(np->tx_skbuff[i]);
   np->stats.tx_dropped++;
  }
  np->tx_skbuff[i] = ((void*)0);
 }
}
