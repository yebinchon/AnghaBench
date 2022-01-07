
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_private {TYPE_2__** tx_skbuff; int * tx_addr; int pci_dev; TYPE_2__** rx_skbuff; int * rx_addr; TYPE_1__* rx_ring; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int dev_kfree_skb (TYPE_2__*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void free_rxtx_rings(struct netdev_private* np)
{
 int i;

 for (i = 0; i < RX_RING_SIZE; i++) {
  np->rx_ring[i].status = 0;
  if (np->rx_skbuff[i]) {
   pci_unmap_single(np->pci_dev,
      np->rx_addr[i],
      np->rx_skbuff[i]->len,
      PCI_DMA_FROMDEVICE);
   dev_kfree_skb(np->rx_skbuff[i]);
  }
  np->rx_skbuff[i] = ((void*)0);
 }
 for (i = 0; i < TX_RING_SIZE; i++) {
  if (np->tx_skbuff[i]) {
   pci_unmap_single(np->pci_dev,
      np->tx_addr[i],
      np->tx_skbuff[i]->len,
      PCI_DMA_TODEVICE);
   dev_kfree_skb(np->tx_skbuff[i]);
  }
  np->tx_skbuff[i] = ((void*)0);
 }
}
