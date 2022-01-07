
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int raw; } ;
struct TYPE_4__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {int backoff; int flags; TYPE_2__ mcmember; int logcount; struct net_device* dev; } ;
struct ipoib_dev_priv {int lock; int mcast_task; int flags; int carrier_on_task; struct ipoib_mcast* broadcast; } ;
struct ib_sa_multicast {int rec; struct ipoib_mcast* context; } ;


 int EAGAIN ;
 int ENETRESET ;
 int ETIMEDOUT ;
 int HZ ;
 int IPOIB_MAX_BACKOFF_SECONDS ;
 int IPOIB_MCAST_FLAG_BUSY ;
 int IPOIB_MCAST_RUN ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*,int ,int) ;
 int ipoib_mcast_join_finish (struct ipoib_mcast*,int *) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int ,int) ;
 int ipoib_workqueue ;
 int mcast_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int queue_delayed_work (int ,int *,int) ;
 int queue_work (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ipoib_mcast_join_complete(int status,
         struct ib_sa_multicast *multicast)
{
 struct ipoib_mcast *mcast = multicast->context;
 struct net_device *dev = mcast->dev;
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 ipoib_dbg_mcast(priv, "join completion for %pI6 (status %d)\n",
   mcast->mcmember.mgid.raw, status);


 if (status == -ENETRESET)
  return 0;

 if (!status)
  status = ipoib_mcast_join_finish(mcast, &multicast->rec);

 if (!status) {
  mcast->backoff = 1;
  mutex_lock(&mcast_mutex);
  if (test_bit(IPOIB_MCAST_RUN, &priv->flags))
   queue_delayed_work(ipoib_workqueue,
        &priv->mcast_task, 0);
  mutex_unlock(&mcast_mutex);





  if (mcast == priv->broadcast)
   queue_work(ipoib_workqueue, &priv->carrier_on_task);

  return 0;
 }

 if (mcast->logcount++ < 20) {
  if (status == -ETIMEDOUT || status == -EAGAIN) {
   ipoib_dbg_mcast(priv, "multicast join failed for %pI6, status %d\n",
     mcast->mcmember.mgid.raw, status);
  } else {
   ipoib_warn(priv, "multicast join failed for %pI6, status %d\n",
       mcast->mcmember.mgid.raw, status);
  }
 }

 mcast->backoff *= 2;
 if (mcast->backoff > IPOIB_MAX_BACKOFF_SECONDS)
  mcast->backoff = IPOIB_MAX_BACKOFF_SECONDS;


 status = test_and_clear_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags);

 mutex_lock(&mcast_mutex);
 spin_lock_irq(&priv->lock);
 if (test_bit(IPOIB_MCAST_RUN, &priv->flags))
  queue_delayed_work(ipoib_workqueue, &priv->mcast_task,
       mcast->backoff * HZ);
 spin_unlock_irq(&priv->lock);
 mutex_unlock(&mcast_mutex);

 return status;
}
