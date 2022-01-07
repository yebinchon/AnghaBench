
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int mcast_task; int flags; } ;


 int IPOIB_MCAST_RUN ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int flush_workqueue (int ) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*) ;
 int ipoib_workqueue ;
 int mcast_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;

int ipoib_mcast_stop_thread(struct net_device *dev, int flush)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 ipoib_dbg_mcast(priv, "stopping multicast thread\n");

 mutex_lock(&mcast_mutex);
 clear_bit(IPOIB_MCAST_RUN, &priv->flags);
 cancel_delayed_work(&priv->mcast_task);
 mutex_unlock(&mcast_mutex);

 if (flush)
  flush_workqueue(ipoib_workqueue);

 return 0;
}
