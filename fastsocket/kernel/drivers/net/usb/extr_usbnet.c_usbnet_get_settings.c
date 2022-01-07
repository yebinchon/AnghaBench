
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mdio_read; } ;
struct usbnet {TYPE_1__ mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int EOPNOTSUPP ;
 int mii_ethtool_gset (TYPE_1__*,struct ethtool_cmd*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

int usbnet_get_settings (struct net_device *net, struct ethtool_cmd *cmd)
{
 struct usbnet *dev = netdev_priv(net);

 if (!dev->mii.mdio_read)
  return -EOPNOTSUPP;

 return mii_ethtool_gset(&dev->mii, cmd);
}
