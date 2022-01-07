
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; } ;


 int IPOIB_FLAG_UMCAST ;
 int clear_bit (int ,int *) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;

void ipoib_set_umcast(struct net_device *ndev, int umcast_val)
{
 struct ipoib_dev_priv *priv = netdev_priv(ndev);

 if (umcast_val > 0) {
  set_bit(IPOIB_FLAG_UMCAST, &priv->flags);
  ipoib_warn(priv, "ignoring multicast groups joined directly "
    "by userspace\n");
 } else
  clear_bit(IPOIB_FLAG_UMCAST, &priv->flags);
}
