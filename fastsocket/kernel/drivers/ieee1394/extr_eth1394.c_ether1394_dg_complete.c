
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; struct net_device* dev; } ;
struct packet_task {struct sk_buff* skb; } ;
struct TYPE_2__ {int tx_packets; int tx_bytes; int tx_errors; int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct eth1394_priv {int lock; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int kmem_cache_free (int ,struct packet_task*) ;
 struct eth1394_priv* netdev_priv (struct net_device*) ;
 int packet_task_cache ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ether1394_dg_complete(struct packet_task *ptask, int fail)
{
 struct sk_buff *skb = ptask->skb;
 struct net_device *dev = skb->dev;
 struct eth1394_priv *priv = netdev_priv(dev);
 unsigned long flags;


 spin_lock_irqsave(&priv->lock, flags);
 if (fail) {
  dev->stats.tx_dropped++;
  dev->stats.tx_errors++;
 } else {
  dev->stats.tx_bytes += skb->len;
  dev->stats.tx_packets++;
 }
 spin_unlock_irqrestore(&priv->lock, flags);

 dev_kfree_skb_any(skb);
 kmem_cache_free(packet_task_cache, ptask);
}
