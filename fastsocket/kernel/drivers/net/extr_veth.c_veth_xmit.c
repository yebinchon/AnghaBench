
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {scalar_t__ ip_summed; int stats; struct net_device* peer; } ;
struct veth_net_stats {int tx_bytes; int rx_bytes; int rx_dropped; int tx_dropped; int rx_packets; int tx_packets; } ;
struct sk_buff {scalar_t__ ip_summed; int len; } ;
struct net_device {int flags; } ;
typedef int netdev_tx_t ;


 scalar_t__ CHECKSUM_NONE ;
 int IFF_UP ;
 int NETDEV_TX_OK ;
 scalar_t__ NET_RX_SUCCESS ;
 scalar_t__ dev_forward_skb (struct net_device*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 struct veth_net_stats* per_cpu_ptr (int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static netdev_tx_t veth_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct net_device *rcv = ((void*)0);
 struct veth_priv *priv, *rcv_priv;
 struct veth_net_stats *stats, *rcv_stats;
 int length, cpu;

 priv = netdev_priv(dev);
 rcv = priv->peer;
 rcv_priv = netdev_priv(rcv);

 cpu = smp_processor_id();
 stats = per_cpu_ptr(priv->stats, cpu);
 rcv_stats = per_cpu_ptr(rcv_priv->stats, cpu);

 if (!(rcv->flags & IFF_UP))
  goto tx_drop;



 if (skb->ip_summed == CHECKSUM_NONE)
  skb->ip_summed = rcv_priv->ip_summed;

 length = skb->len;
 if (dev_forward_skb(rcv, skb) != NET_RX_SUCCESS)
  goto rx_drop;

 stats->tx_bytes += length;
 stats->tx_packets++;

 rcv_stats->rx_bytes += length;
 rcv_stats->rx_packets++;

 return NETDEV_TX_OK;

tx_drop:
 kfree_skb(skb);
 stats->tx_dropped++;
 return NETDEV_TX_OK;

rx_drop:
 rcv_stats->rx_dropped++;
 return NETDEV_TX_OK;
}
