
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int (* close ) (struct iss_net_private*) ;} ;
struct iss_net_private {int lock; TYPE_1__ tp; int timer; } ;


 int del_timer_sync (int *) ;
 int list_del (int *) ;
 struct iss_net_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int opened ;
 int opened_lock ;
 int printk (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct iss_net_private*) ;

__attribute__((used)) static int iss_net_close(struct net_device *dev)
{
 struct iss_net_private *lp = netdev_priv(dev);
printk("iss_net_close!\n");
 netif_stop_queue(dev);
 spin_lock(&lp->lock);

 spin_lock(&opened_lock);
 list_del(&opened);
 spin_unlock(&opened_lock);

 del_timer_sync(&lp->timer);

 lp->tp.close(lp);

 spin_unlock(&lp->lock);
 return 0;
}
