
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w840_tx_desc {scalar_t__ status; } ;
struct w840_rx_desc {int dummy; } ;
struct sk_buff {int data; } ;
struct netdev_private {unsigned int dirty_rx; scalar_t__ base_addr; scalar_t__ ring_dma_addr; scalar_t__ cur_tx; scalar_t__ dirty_tx; scalar_t__ tx_q_bytes; scalar_t__ tx_full; struct w840_tx_desc* tx_ring; int ** tx_skbuff; scalar_t__ cur_rx; TYPE_1__* rx_ring; int * rx_addr; int rx_buf_sz; int pci_dev; struct sk_buff** rx_skbuff; TYPE_1__* rx_head_desc; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ status; int buffer1; int length; } ;


 int DescEndRing ;
 scalar_t__ DescOwned ;
 int PCI_DMA_FROMDEVICE ;
 size_t RX_RING_SIZE ;
 scalar_t__ RxRingPtr ;
 int TX_RING_SIZE ;
 scalar_t__ TxRingPtr ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_map_single (int ,int ,int ,int ) ;

__attribute__((used)) static void init_rxtx_rings(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 int i;

 np->rx_head_desc = &np->rx_ring[0];
 np->tx_ring = (struct w840_tx_desc*)&np->rx_ring[RX_RING_SIZE];


 for (i = 0; i < RX_RING_SIZE; i++) {
  np->rx_ring[i].length = np->rx_buf_sz;
  np->rx_ring[i].status = 0;
  np->rx_skbuff[i] = ((void*)0);
 }

 np->rx_ring[i-1].length |= DescEndRing;


 for (i = 0; i < RX_RING_SIZE; i++) {
  struct sk_buff *skb = dev_alloc_skb(np->rx_buf_sz);
  np->rx_skbuff[i] = skb;
  if (skb == ((void*)0))
   break;
  np->rx_addr[i] = pci_map_single(np->pci_dev,skb->data,
     np->rx_buf_sz,PCI_DMA_FROMDEVICE);

  np->rx_ring[i].buffer1 = np->rx_addr[i];
  np->rx_ring[i].status = DescOwned;
 }

 np->cur_rx = 0;
 np->dirty_rx = (unsigned int)(i - RX_RING_SIZE);


 for (i = 0; i < TX_RING_SIZE; i++) {
  np->tx_skbuff[i] = ((void*)0);
  np->tx_ring[i].status = 0;
 }
 np->tx_full = 0;
 np->tx_q_bytes = np->dirty_tx = np->cur_tx = 0;

 iowrite32(np->ring_dma_addr, np->base_addr + RxRingPtr);
 iowrite32(np->ring_dma_addr+sizeof(struct w840_rx_desc)*RX_RING_SIZE,
  np->base_addr + TxRingPtr);

}
