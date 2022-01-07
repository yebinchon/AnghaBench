
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int pkey_poll_task; int flags; } ;


 int IPOIB_FLAG_OPER_UP ;
 int IPOIB_PKEY_ASSIGNED ;
 int IPOIB_PKEY_STOP ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int flush_workqueue (int ) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_flush_paths (struct net_device*) ;
 int ipoib_mcast_dev_flush (struct net_device*) ;
 int ipoib_mcast_stop_thread (struct net_device*,int) ;
 int ipoib_workqueue ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int pkey_mutex ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int ipoib_ib_dev_down(struct net_device *dev, int flush)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 ipoib_dbg(priv, "downing ib_dev\n");

 clear_bit(IPOIB_FLAG_OPER_UP, &priv->flags);
 netif_carrier_off(dev);


 if (!test_bit(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
  mutex_lock(&pkey_mutex);
  set_bit(IPOIB_PKEY_STOP, &priv->flags);
  cancel_delayed_work(&priv->pkey_poll_task);
  mutex_unlock(&pkey_mutex);
  if (flush)
   flush_workqueue(ipoib_workqueue);
 }

 ipoib_mcast_stop_thread(dev, flush);
 ipoib_mcast_dev_flush(dev);

 ipoib_flush_paths(dev);

 return 0;
}
