
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int raw; } ;
struct TYPE_4__ {TYPE_1__ dgid; } ;
struct ipoib_path {scalar_t__ ah; TYPE_2__ pathrec; int queue; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int ipoib_dbg (int ,char*) ;
 int ipoib_del_neighs_by_gid (struct net_device*,int ) ;
 int ipoib_put_ah (scalar_t__) ;
 int kfree (struct ipoib_path*) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static void path_free(struct net_device *dev, struct ipoib_path *path)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(&path->queue)))
  dev_kfree_skb_irq(skb);

 ipoib_dbg(netdev_priv(dev), "path_free\n");


 ipoib_del_neighs_by_gid(dev, path->pathrec.dgid.raw);

 if (path->ah)
  ipoib_put_ah(path->ah);

 kfree(path);
}
