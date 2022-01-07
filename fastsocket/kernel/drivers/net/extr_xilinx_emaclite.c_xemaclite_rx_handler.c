
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int ip_summed; int protocol; struct net_device* dev; scalar_t__ data; } ;
struct net_local {TYPE_1__* ndev; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; int rx_errors; int rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ ALIGNMENT ;
 unsigned int BUFFER_ALIGN (scalar_t__) ;
 int CHECKSUM_NONE ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_FRAME_LEN ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_err (int *,char*) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ xemaclite_recv_data (struct net_local*,int *) ;

__attribute__((used)) static void xemaclite_rx_handler(struct net_device *dev)
{
 struct net_local *lp = (struct net_local *) netdev_priv(dev);
 struct sk_buff *skb;
 unsigned int align;
 u32 len;

 len = ETH_FRAME_LEN + ETH_FCS_LEN;
 skb = dev_alloc_skb(len + ALIGNMENT);
 if (!skb) {

  dev->stats.rx_dropped++;
  dev_err(&lp->ndev->dev, "Could not allocate receive buffer\n");
  return;
 }






 align = BUFFER_ALIGN(skb->data);
 if (align)
  skb_reserve(skb, align);

 skb_reserve(skb, 2);

 len = xemaclite_recv_data(lp, (u8 *) skb->data);

 if (!len) {
  dev->stats.rx_errors++;
  dev_kfree_skb_irq(skb);
  return;
 }

 skb_put(skb, len);
 skb->dev = dev;

 skb->protocol = eth_type_trans(skb, dev);
 skb->ip_summed = CHECKSUM_NONE;

 dev->stats.rx_packets++;
 dev->stats.rx_bytes += len;

 netif_rx(skb);
}
