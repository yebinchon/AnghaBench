
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct smsc9420_pdata {scalar_t__ rx_csum; TYPE_2__* rx_buffers; int pdev; struct net_device* dev; } ;
struct sk_buff {int protocol; int ip_summed; int csum; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {struct sk_buff* skb; scalar_t__ mapping; } ;


 int CHECKSUM_COMPLETE ;
 int NET_IP_ALIGN ;
 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 int const RDES0_FRAME_LENGTH_MASK_ ;
 int const RDES0_FRAME_LENGTH_SHFT_ ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int get_unaligned_le16 (int) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int put_unaligned_le16 (int,int *) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static void smsc9420_rx_handoff(struct smsc9420_pdata *pd, const int index,
    const u32 status)
{
 struct net_device *dev = pd->dev;
 struct sk_buff *skb;
 u16 packet_length = (status & RDES0_FRAME_LENGTH_MASK_)
  >> RDES0_FRAME_LENGTH_SHFT_;


 packet_length -= 4;

 if (pd->rx_csum)
  packet_length -= 2;

 dev->stats.rx_packets++;
 dev->stats.rx_bytes += packet_length;

 pci_unmap_single(pd->pdev, pd->rx_buffers[index].mapping,
  PKT_BUF_SZ, PCI_DMA_FROMDEVICE);
 pd->rx_buffers[index].mapping = 0;

 skb = pd->rx_buffers[index].skb;
 pd->rx_buffers[index].skb = ((void*)0);

 if (pd->rx_csum) {
  u16 hw_csum = get_unaligned_le16(skb_tail_pointer(skb) +
   NET_IP_ALIGN + packet_length + 4);
  put_unaligned_le16(hw_csum, &skb->csum);
  skb->ip_summed = CHECKSUM_COMPLETE;
 }

 skb_reserve(skb, NET_IP_ALIGN);
 skb_put(skb, packet_length);

 skb->protocol = eth_type_trans(skb, dev);

 netif_receive_skb(skb);
}
