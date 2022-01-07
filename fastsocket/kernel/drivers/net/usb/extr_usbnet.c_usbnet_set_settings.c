
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mdio_write; } ;
struct usbnet {TYPE_1__* driver_info; TYPE_2__ mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct TYPE_3__ {int (* link_reset ) (struct usbnet*) ;} ;


 int EOPNOTSUPP ;
 int mii_ethtool_sset (TYPE_2__*,struct ethtool_cmd*) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int stub1 (struct usbnet*) ;

int usbnet_set_settings (struct net_device *net, struct ethtool_cmd *cmd)
{
 struct usbnet *dev = netdev_priv(net);
 int retval;

 if (!dev->mii.mdio_write)
  return -EOPNOTSUPP;

 retval = mii_ethtool_sset(&dev->mii, cmd);


 if (dev->driver_info->link_reset)
  dev->driver_info->link_reset(dev);

 return retval;

}
