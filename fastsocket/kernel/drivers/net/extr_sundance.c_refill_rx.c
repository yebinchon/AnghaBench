
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; struct net_device* dev; } ;
struct netdev_private {int cur_rx; int dirty_rx; int rx_buf_sz; TYPE_2__* rx_ring; int pci_dev; struct sk_buff** rx_skbuff; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ status; TYPE_1__* frag; } ;
struct TYPE_3__ {void* length; void* addr; } ;


 int LastFrag ;
 int PCI_DMA_FROMDEVICE ;
 int RX_RING_SIZE ;
 void* cpu_to_le32 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_map_single (int ,int ,int,int ) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void refill_rx (struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 int entry;
 int cnt = 0;


 for (;(np->cur_rx - np->dirty_rx + RX_RING_SIZE) % RX_RING_SIZE > 0;
  np->dirty_rx = (np->dirty_rx + 1) % RX_RING_SIZE) {
  struct sk_buff *skb;
  entry = np->dirty_rx % RX_RING_SIZE;
  if (np->rx_skbuff[entry] == ((void*)0)) {
   skb = dev_alloc_skb(np->rx_buf_sz);
   np->rx_skbuff[entry] = skb;
   if (skb == ((void*)0))
    break;
   skb->dev = dev;
   skb_reserve(skb, 2);
   np->rx_ring[entry].frag[0].addr = cpu_to_le32(
    pci_map_single(np->pci_dev, skb->data,
     np->rx_buf_sz, PCI_DMA_FROMDEVICE));
  }

  np->rx_ring[entry].frag[0].length =
   cpu_to_le32(np->rx_buf_sz | LastFrag);
  np->rx_ring[entry].status = 0;
  cnt++;
 }
 return;
}
