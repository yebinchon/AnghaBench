
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ mdio_read; } ;
struct usbnet {TYPE_2__ mii; TYPE_1__* driver_info; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* check_connect ) (struct usbnet*) ;} ;


 int ethtool_op_get_link (struct net_device*) ;
 int mii_link_ok (TYPE_2__*) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (struct usbnet*) ;

u32 usbnet_get_link (struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);


 if (dev->driver_info->check_connect)
  return dev->driver_info->check_connect (dev) == 0;


 if (dev->mii.mdio_read)
  return mii_link_ok(&dev->mii);


 return ethtool_op_get_link(net);
}
