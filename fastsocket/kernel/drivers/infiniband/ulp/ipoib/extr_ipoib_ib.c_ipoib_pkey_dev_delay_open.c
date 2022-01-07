
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int pkey_poll_task; int flags; } ;


 int HZ ;
 int IPOIB_PKEY_ASSIGNED ;
 int IPOIB_PKEY_STOP ;
 int clear_bit (int ,int *) ;
 int ipoib_pkey_dev_check_presence (struct net_device*) ;
 int ipoib_workqueue ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int pkey_mutex ;
 int queue_delayed_work (int ,int *,int ) ;
 int test_bit (int ,int *) ;

int ipoib_pkey_dev_delay_open(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);



 ipoib_pkey_dev_check_presence(dev);


 if (!test_bit(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
  mutex_lock(&pkey_mutex);
  clear_bit(IPOIB_PKEY_STOP, &priv->flags);
  queue_delayed_work(ipoib_workqueue,
       &priv->pkey_poll_task,
       HZ);
  mutex_unlock(&pkey_mutex);
  return 1;
 }

 return 0;
}
