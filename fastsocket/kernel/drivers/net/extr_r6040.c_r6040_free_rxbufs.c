
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r6040_private {TYPE_1__* rx_insert_ptr; int pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* vndescp; int * skb_ptr; int buf; } ;


 int MAX_BUF_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_DCNT ;
 int dev_kfree_skb (int *) ;
 int le32_to_cpu (int ) ;
 struct r6040_private* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void r6040_free_rxbufs(struct net_device *dev)
{
 struct r6040_private *lp = netdev_priv(dev);
 int i;

 for (i = 0; i < RX_DCNT; i++) {
  if (lp->rx_insert_ptr->skb_ptr) {
   pci_unmap_single(lp->pdev,
    le32_to_cpu(lp->rx_insert_ptr->buf),
    MAX_BUF_SIZE, PCI_DMA_FROMDEVICE);
   dev_kfree_skb(lp->rx_insert_ptr->skb_ptr);
   lp->rx_insert_ptr->skb_ptr = ((void*)0);
  }
  lp->rx_insert_ptr = lp->rx_insert_ptr->vndescp;
 }
}
