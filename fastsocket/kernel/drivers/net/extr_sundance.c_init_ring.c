
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int data; struct net_device* dev; } ;
struct netdev_private {unsigned int dirty_rx; unsigned int dirty_tx; int rx_buf_sz; int rx_ring_dma; TYPE_3__* tx_ring; int ** tx_skbuff; TYPE_2__* rx_ring; int pci_dev; struct sk_buff** rx_skbuff; scalar_t__ cur_task; scalar_t__ cur_tx; scalar_t__ cur_rx; } ;
struct net_device {int mtu; } ;
struct TYPE_6__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_1__* frag; scalar_t__ status; void* next_desc; } ;
struct TYPE_4__ {void* length; void* addr; } ;


 int LastFrag ;
 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 void* cpu_to_le32 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_map_single (int ,int ,int,int ) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void init_ring(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 int i;

 np->cur_rx = np->cur_tx = 0;
 np->dirty_rx = np->dirty_tx = 0;
 np->cur_task = 0;

 np->rx_buf_sz = (dev->mtu <= 1520 ? PKT_BUF_SZ : dev->mtu + 16);


 for (i = 0; i < RX_RING_SIZE; i++) {
  np->rx_ring[i].next_desc = cpu_to_le32(np->rx_ring_dma +
   ((i+1)%RX_RING_SIZE)*sizeof(*np->rx_ring));
  np->rx_ring[i].status = 0;
  np->rx_ring[i].frag[0].length = 0;
  np->rx_skbuff[i] = ((void*)0);
 }


 for (i = 0; i < RX_RING_SIZE; i++) {
  struct sk_buff *skb = dev_alloc_skb(np->rx_buf_sz);
  np->rx_skbuff[i] = skb;
  if (skb == ((void*)0))
   break;
  skb->dev = dev;
  skb_reserve(skb, 2);
  np->rx_ring[i].frag[0].addr = cpu_to_le32(
   pci_map_single(np->pci_dev, skb->data, np->rx_buf_sz,
    PCI_DMA_FROMDEVICE));
  np->rx_ring[i].frag[0].length = cpu_to_le32(np->rx_buf_sz | LastFrag);
 }
 np->dirty_rx = (unsigned int)(i - RX_RING_SIZE);

 for (i = 0; i < TX_RING_SIZE; i++) {
  np->tx_skbuff[i] = ((void*)0);
  np->tx_ring[i].status = 0;
 }
 return;
}
