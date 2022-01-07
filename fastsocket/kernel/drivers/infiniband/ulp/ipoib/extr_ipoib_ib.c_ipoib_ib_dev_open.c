
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int pkey; int napi; int flags; int ah_reap_task; int pkey_index; int port; int ca; } ;


 int HZ ;
 int IPOIB_FLAG_INITIALIZED ;
 int IPOIB_PKEY_ASSIGNED ;
 int IPOIB_STOP_REAPER ;
 int clear_bit (int ,int *) ;
 scalar_t__ ib_find_pkey (int ,int ,int,int *) ;
 int ipoib_cm_dev_open (struct net_device*) ;
 int ipoib_ib_dev_stop (struct net_device*,int) ;
 int ipoib_ib_post_receives (struct net_device*) ;
 int ipoib_init_qp (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 int ipoib_workqueue ;
 int napi_enable (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int round_jiffies_relative (int ) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

int ipoib_ib_dev_open(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 int ret;

 if (ib_find_pkey(priv->ca, priv->port, priv->pkey, &priv->pkey_index)) {
  ipoib_warn(priv, "P_Key 0x%04x not found\n", priv->pkey);
  clear_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);
  return -1;
 }
 set_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);

 ret = ipoib_init_qp(dev);
 if (ret) {
  ipoib_warn(priv, "ipoib_init_qp returned %d\n", ret);
  return -1;
 }

 ret = ipoib_ib_post_receives(dev);
 if (ret) {
  ipoib_warn(priv, "ipoib_ib_post_receives returned %d\n", ret);
  ipoib_ib_dev_stop(dev, 1);
  return -1;
 }

 ret = ipoib_cm_dev_open(dev);
 if (ret) {
  ipoib_warn(priv, "ipoib_cm_dev_open returned %d\n", ret);
  ipoib_ib_dev_stop(dev, 1);
  return -1;
 }

 clear_bit(IPOIB_STOP_REAPER, &priv->flags);
 queue_delayed_work(ipoib_workqueue, &priv->ah_reap_task,
      round_jiffies_relative(HZ));

 if (!test_and_set_bit(IPOIB_FLAG_INITIALIZED, &priv->flags))
  napi_enable(&priv->napi);

 return 0;
}
