
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; } ;


 int IPOIB_FLAG_OPER_UP ;
 int IPOIB_PKEY_ASSIGNED ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_mcast_start_thread (struct net_device*) ;
 int ipoib_pkey_dev_check_presence (struct net_device*) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int ipoib_ib_dev_up(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 ipoib_pkey_dev_check_presence(dev);

 if (!test_bit(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
  ipoib_dbg(priv, "PKEY is not assigned.\n");
  return 0;
 }

 set_bit(IPOIB_FLAG_OPER_UP, &priv->flags);

 return ipoib_mcast_start_thread(dev);
}
