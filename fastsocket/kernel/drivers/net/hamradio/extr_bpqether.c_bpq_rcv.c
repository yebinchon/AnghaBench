
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int* data; int protocol; } ;
struct packet_type {int dummy; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ethhdr {int h_source; } ;
struct bpqdev {int* acpt_addr; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int NET_RX_DROP ;
 int ax25_type_trans (struct sk_buff*,struct net_device*) ;
 struct net_device* bpq_get_ax25_dev (struct net_device*) ;
 int * dev_net (struct net_device*) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcmp (int ,int*,int ) ;
 struct bpqdev* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skb_cow (struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 char* skb_push (struct sk_buff*,int) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static int bpq_rcv(struct sk_buff *skb, struct net_device *dev, struct packet_type *ptype, struct net_device *orig_dev)
{
 int len;
 char * ptr;
 struct ethhdr *eth;
 struct bpqdev *bpq;

 if (dev_net(dev) != &init_net)
  goto drop;

 if ((skb = skb_share_check(skb, GFP_ATOMIC)) == ((void*)0))
  return NET_RX_DROP;

 if (!pskb_may_pull(skb, sizeof(struct ethhdr)))
  goto drop;

 rcu_read_lock();
 dev = bpq_get_ax25_dev(dev);

 if (dev == ((void*)0) || !netif_running(dev))
  goto drop_unlock;






 bpq = netdev_priv(dev);

 eth = eth_hdr(skb);

 if (!(bpq->acpt_addr[0] & 0x01) &&
     memcmp(eth->h_source, bpq->acpt_addr, ETH_ALEN))
  goto drop_unlock;

 if (skb_cow(skb, sizeof(struct ethhdr)))
  goto drop_unlock;

 len = skb->data[0] + skb->data[1] * 256 - 5;

 skb_pull(skb, 2);
 skb_trim(skb, len);

 dev->stats.rx_packets++;
 dev->stats.rx_bytes += len;

 ptr = skb_push(skb, 1);
 *ptr = 0;

 skb->protocol = ax25_type_trans(skb, dev);
 netif_rx(skb);
unlock:

 rcu_read_unlock();

 return 0;
drop_unlock:
 kfree_skb(skb);
 goto unlock;

drop:
 kfree_skb(skb);
 return 0;
}
