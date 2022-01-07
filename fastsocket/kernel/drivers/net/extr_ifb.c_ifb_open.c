
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifb_private {int tq; int rq; int ifb_tasklet; } ;


 struct ifb_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int ri_tasklet ;
 int skb_queue_head_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int ifb_open(struct net_device *dev)
{
 struct ifb_private *dp = netdev_priv(dev);

 tasklet_init(&dp->ifb_tasklet, ri_tasklet, (unsigned long)dev);
 skb_queue_head_init(&dp->rq);
 skb_queue_head_init(&dp->tq);
 netif_start_queue(dev);

 return 0;
}
