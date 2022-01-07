
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct ipoib_dev_priv {int hca_caps; int flags; } ;


 int EOPNOTSUPP ;
 int IB_DEVICE_UD_TSO ;
 int IPOIB_FLAG_ADMIN_CM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ipoib_set_tso(struct net_device *dev, u32 data)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 if (data) {
  if (!test_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags) &&
      (dev->features & NETIF_F_SG) &&
      (priv->hca_caps & IB_DEVICE_UD_TSO)) {
   dev->features |= NETIF_F_TSO;
  } else {
   ipoib_warn(priv, "can't set TSO on\n");
   return -EOPNOTSUPP;
  }
 } else
  dev->features &= ~NETIF_F_TSO;

 return 0;
}
