
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int mcast_work; int driver_lock; scalar_t__ infra_open; } ;


 int LBS_DEB_NET ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_work (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lbs_eth_stop(struct net_device *dev)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_NET);

 spin_lock_irq(&priv->driver_lock);
 priv->infra_open = 0;
 netif_stop_queue(dev);
 spin_unlock_irq(&priv->driver_lock);

 schedule_work(&priv->mcast_work);

 lbs_deb_leave(LBS_DEB_NET);
 return 0;
}
