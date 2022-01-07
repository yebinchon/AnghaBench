
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int features; int mtu; int dev_addr; } ;
struct TYPE_3__ {int send_flags; } ;
struct ipoib_dev_priv {int hca_caps; int mcast_mtu; TYPE_2__* dev; int flags; TYPE_1__ tx_wr; } ;
struct TYPE_4__ {int features; } ;


 int EINVAL ;
 int IB_DEVICE_UD_TSO ;
 int IB_SEND_IP_CSUM ;
 scalar_t__ IPOIB_CM_SUPPORTED (int ) ;
 int IPOIB_FLAG_ADMIN_CM ;
 int IPOIB_FLAG_CSUM ;
 int NETIF_F_GRO ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int clear_bit (int ,int *) ;
 int dev_set_mtu (struct net_device*,int ) ;
 int ipoib_flush_paths (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 int min (int ,int ) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;
 int strcmp (char const*,char*) ;
 scalar_t__ test_bit (int ,int *) ;

int ipoib_set_mode(struct net_device *dev, const char *buf)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);


 if (IPOIB_CM_SUPPORTED(dev->dev_addr) && !strcmp(buf, "connected\n")) {
  set_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags);
  ipoib_warn(priv, "enabling connected mode "
      "will cause multicast packet drops\n");

  dev->features &= ~(NETIF_F_IP_CSUM | NETIF_F_SG | NETIF_F_TSO);
  rtnl_unlock();
  priv->tx_wr.send_flags &= ~IB_SEND_IP_CSUM;

  ipoib_flush_paths(dev);
  rtnl_lock();
  return 0;
 }

 if (!strcmp(buf, "datagram\n")) {
  clear_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags);

  if (test_bit(IPOIB_FLAG_CSUM, &priv->flags)) {
   dev->features |= NETIF_F_IP_CSUM | NETIF_F_SG;
   priv->dev->features |= NETIF_F_GRO;
   if (priv->hca_caps & IB_DEVICE_UD_TSO)
    dev->features |= NETIF_F_TSO;
  }
  dev_set_mtu(dev, min(priv->mcast_mtu, dev->mtu));
  rtnl_unlock();
  ipoib_flush_paths(dev);
  rtnl_lock();
  return 0;
 }

 return -EINVAL;
}
