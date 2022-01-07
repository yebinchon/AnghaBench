
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int protocol; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct bpqdev {int dest_addr; } ;
typedef int netdev_tx_t ;


 int AX25_BPQ_HEADER_LEN ;
 int ETH_P_BPQ ;
 int NETDEV_TX_OK ;
 int ax25_type_trans (struct sk_buff*,struct net_device*) ;
 struct net_device* bpq_get_ether_dev (struct net_device*) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,int *,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 struct bpqdev* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_err (char*) ;
 scalar_t__ skb_cow (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 unsigned char* skb_push (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t bpq_xmit(struct sk_buff *skb, struct net_device *dev)
{
 unsigned char *ptr;
 struct bpqdev *bpq;
 int size;





 if (!netif_running(dev)) {
  kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 skb_pull(skb, 1);
 size = skb->len;






 if (skb_cow(skb, AX25_BPQ_HEADER_LEN)) {
  if (net_ratelimit())
   pr_err("bpqether: out of memory\n");
  kfree_skb(skb);

  return NETDEV_TX_OK;
 }

 ptr = skb_push(skb, 2);

 *ptr++ = (size + 5) % 256;
 *ptr++ = (size + 5) / 256;

 bpq = netdev_priv(dev);

 if ((dev = bpq_get_ether_dev(dev)) == ((void*)0)) {
  dev->stats.tx_dropped++;
  kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 skb->protocol = ax25_type_trans(skb, dev);
 skb_reset_network_header(skb);
 dev_hard_header(skb, dev, ETH_P_BPQ, bpq->dest_addr, ((void*)0), 0);
 dev->stats.tx_packets++;
 dev->stats.tx_bytes+=skb->len;

 dev_queue_xmit(skb);
 netif_wake_queue(dev);
 return NETDEV_TX_OK;
}
