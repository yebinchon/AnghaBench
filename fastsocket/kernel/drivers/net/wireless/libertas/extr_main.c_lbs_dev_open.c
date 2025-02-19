
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int mesh_open; int infra_open; scalar_t__ connect_status; int driver_lock; int tx_pending_len; scalar_t__ mesh_connect_status; struct net_device* mesh_dev; scalar_t__ monitormode; } ;


 int EBUSY ;
 scalar_t__ LBS_CONNECTED ;
 int LBS_DEB_NET ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lbs_dev_open(struct net_device *dev)
{
 struct lbs_private *priv = dev->ml_priv;
 int ret = 0;

 lbs_deb_enter(LBS_DEB_NET);

 spin_lock_irq(&priv->driver_lock);

 if (priv->monitormode) {
  ret = -EBUSY;
  goto out;
 }

 if (dev == priv->mesh_dev) {
  priv->mesh_open = 1;
  priv->mesh_connect_status = LBS_CONNECTED;
  netif_carrier_on(dev);
 } else {
  priv->infra_open = 1;

  if (priv->connect_status == LBS_CONNECTED)
   netif_carrier_on(dev);
  else
   netif_carrier_off(dev);
 }

 if (!priv->tx_pending_len)
  netif_wake_queue(dev);
 out:

 spin_unlock_irq(&priv->driver_lock);
 lbs_deb_leave_args(LBS_DEB_NET, "ret %d", ret);
 return ret;
}
