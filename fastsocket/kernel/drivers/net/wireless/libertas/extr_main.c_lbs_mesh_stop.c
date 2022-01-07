
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int mcast_work; int driver_lock; int mesh_connect_status; scalar_t__ mesh_open; } ;


 int LBS_DEB_MESH ;
 int LBS_DISCONNECTED ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_work (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lbs_mesh_stop(struct net_device *dev)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_MESH);
 spin_lock_irq(&priv->driver_lock);

 priv->mesh_open = 0;
 priv->mesh_connect_status = LBS_DISCONNECTED;

 netif_stop_queue(dev);
 netif_carrier_off(dev);

 spin_unlock_irq(&priv->driver_lock);

 schedule_work(&priv->mcast_work);

 lbs_deb_leave(LBS_DEB_MESH);
 return 0;
}
