
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int mcast_task; int flags; } ;


 int IPOIB_MCAST_RUN ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*) ;
 int ipoib_workqueue ;
 int mcast_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int test_and_set_bit (int ,int *) ;

int ipoib_mcast_start_thread(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 ipoib_dbg_mcast(priv, "starting multicast thread\n");

 mutex_lock(&mcast_mutex);
 if (!test_and_set_bit(IPOIB_MCAST_RUN, &priv->flags))
  queue_delayed_work(ipoib_workqueue, &priv->mcast_task, 0);
 mutex_unlock(&mcast_mutex);

 return 0;
}
