
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifb_private {int tq; int rq; int ifb_tasklet; } ;


 struct ifb_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_queue_purge (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int ifb_close(struct net_device *dev)
{
 struct ifb_private *dp = netdev_priv(dev);

 tasklet_kill(&dp->ifb_tasklet);
 netif_stop_queue(dev);
 skb_queue_purge(&dp->rq);
 skb_queue_purge(&dp->tq);
 return 0;
}
