
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct netdev_private {struct sk_buff** tx_skbuff; TYPE_1__* tx_ring; int pdev; struct sk_buff** rx_skbuff; TYPE_1__* rx_ring; int timer; } ;
struct net_device {long base_addr; int irq; } ;
struct TYPE_2__ {scalar_t__ fraginfo; scalar_t__ status; } ;


 scalar_t__ IntEnable ;
 scalar_t__ MACCtrl ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int RX_RING_SIZE ;
 int RxDisable ;
 int StatsDisable ;
 int TX_RING_SIZE ;
 int TxDisable ;
 int del_timer_sync (int *) ;
 int desc_to_dma (TYPE_1__*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int free_irq (int ,struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int writel (int,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int
rio_close (struct net_device *dev)
{
 long ioaddr = dev->base_addr;
 struct netdev_private *np = netdev_priv(dev);
 struct sk_buff *skb;
 int i;

 netif_stop_queue (dev);


 writew (0, ioaddr + IntEnable);


 writel (TxDisable | RxDisable | StatsDisable, ioaddr + MACCtrl);

 free_irq (dev->irq, dev);
 del_timer_sync (&np->timer);


 for (i = 0; i < RX_RING_SIZE; i++) {
  np->rx_ring[i].status = 0;
  np->rx_ring[i].fraginfo = 0;
  skb = np->rx_skbuff[i];
  if (skb) {
   pci_unmap_single(np->pdev,
      desc_to_dma(&np->rx_ring[i]),
      skb->len, PCI_DMA_FROMDEVICE);
   dev_kfree_skb (skb);
   np->rx_skbuff[i] = ((void*)0);
  }
 }
 for (i = 0; i < TX_RING_SIZE; i++) {
  skb = np->tx_skbuff[i];
  if (skb) {
   pci_unmap_single(np->pdev,
      desc_to_dma(&np->tx_ring[i]),
      skb->len, PCI_DMA_TODEVICE);
   dev_kfree_skb (skb);
   np->tx_skbuff[i] = ((void*)0);
  }
 }

 return 0;
}
