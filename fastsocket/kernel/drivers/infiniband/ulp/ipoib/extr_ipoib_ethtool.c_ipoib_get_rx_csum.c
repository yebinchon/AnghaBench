
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; } ;


 int IPOIB_FLAG_ADMIN_CM ;
 int IPOIB_FLAG_CSUM ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 ipoib_get_rx_csum(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 return test_bit(IPOIB_FLAG_CSUM, &priv->flags) &&
  !test_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags);
}
