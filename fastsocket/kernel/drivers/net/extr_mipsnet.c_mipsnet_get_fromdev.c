
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int ip_summed; int protocol; } ;
struct TYPE_2__ {size_t rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef size_t ssize_t ;


 int CHECKSUM_UNNECESSARY ;
 size_t EFAULT ;
 size_t ENOMEM ;
 scalar_t__ NET_IP_ALIGN ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ ioiocpy_frommipsnet (struct net_device*,int ,size_t) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static inline ssize_t mipsnet_get_fromdev(struct net_device *dev, size_t len)
{
 struct sk_buff *skb;

 if (!len)
  return len;

 skb = dev_alloc_skb(len + NET_IP_ALIGN);
 if (!skb) {
  dev->stats.rx_dropped++;
  return -ENOMEM;
 }

 skb_reserve(skb, NET_IP_ALIGN);
 if (ioiocpy_frommipsnet(dev, skb_put(skb, len), len))
  return -EFAULT;

 skb->protocol = eth_type_trans(skb, dev);
 skb->ip_summed = CHECKSUM_UNNECESSARY;

 netif_rx(skb);

 dev->stats.rx_packets++;
 dev->stats.rx_bytes += len;

 return len;
}
