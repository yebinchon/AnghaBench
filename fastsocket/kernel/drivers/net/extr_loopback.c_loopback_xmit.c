
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int protocol; } ;
struct pcpu_lstats {int bytes; int drops; int packets; } ;
struct net_device {struct pcpu_lstats* ml_priv; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 scalar_t__ NET_RX_SUCCESS ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ likely (int) ;
 scalar_t__ netif_rx (struct sk_buff*) ;
 struct pcpu_lstats* per_cpu_ptr (struct pcpu_lstats*,int ) ;
 int skb_orphan (struct sk_buff*) ;
 int smp_processor_id () ;

__attribute__((used)) static netdev_tx_t loopback_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
 struct pcpu_lstats *pcpu_lstats, *lb_stats;
 int len;

 skb_orphan(skb);

 skb->protocol = eth_type_trans(skb, dev);


 pcpu_lstats = dev->ml_priv;
 lb_stats = per_cpu_ptr(pcpu_lstats, smp_processor_id());

 len = skb->len;
 if (likely(netif_rx(skb) == NET_RX_SUCCESS)) {
  lb_stats->bytes += len;
  lb_stats->packets++;
 } else
  lb_stats->drops++;

 return NETDEV_TX_OK;
}
