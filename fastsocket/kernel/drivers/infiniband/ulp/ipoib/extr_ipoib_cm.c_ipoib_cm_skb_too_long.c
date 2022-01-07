
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int skb_task; int skb_queue; } ;
struct ipoib_dev_priv {TYPE_2__ cm; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* update_pmtu ) (TYPE_3__*,unsigned int) ;} ;


 int ipoib_workqueue ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;
 TYPE_3__* skb_dst (struct sk_buff*) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (TYPE_3__*,unsigned int) ;

void ipoib_cm_skb_too_long(struct net_device *dev, struct sk_buff *skb,
      unsigned int mtu)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 int e = skb_queue_empty(&priv->cm.skb_queue);

 if (skb_dst(skb))
  skb_dst(skb)->ops->update_pmtu(skb_dst(skb), mtu);

 skb_queue_tail(&priv->cm.skb_queue, skb);
 if (e)
  queue_work(ipoib_workqueue, &priv->cm.skb_task);
}
