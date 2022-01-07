
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ring_info {scalar_t__ mapping; TYPE_2__* skb; } ;
struct netdrv_private {int pci_dev; struct ring_info* tx_info; int dirty_tx; int cur_tx; } ;
struct TYPE_3__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {int len; } ;


 int NUM_TX_DESC ;
 int PCI_DMA_TODEVICE ;
 int atomic_set (int *,int ) ;
 int dev_kfree_skb (TYPE_2__*) ;
 struct netdrv_private* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void netdrv_tx_clear (struct net_device *dev)
{
 int i;
 struct netdrv_private *tp = netdev_priv(dev);

 atomic_set (&tp->cur_tx, 0);
 atomic_set (&tp->dirty_tx, 0);


 for (i = 0; i < NUM_TX_DESC; i++) {
  struct ring_info *rp = &tp->tx_info[i];
  if (rp->mapping != 0) {
   pci_unmap_single (tp->pci_dev, rp->mapping,
       rp->skb->len, PCI_DMA_TODEVICE);
   rp->mapping = 0;
  }
  if (rp->skb) {
   dev_kfree_skb (rp->skb);
   rp->skb = ((void*)0);
   dev->stats.tx_dropped++;
  }
 }
}
