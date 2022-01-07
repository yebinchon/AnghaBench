
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct kaweth_device {int dev; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 int driver_name ;
 struct kaweth_device* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static void kaweth_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct kaweth_device *kaweth = netdev_priv(dev);

 strlcpy(info->driver, driver_name, sizeof(info->driver));
 usb_make_path(kaweth->dev, info->bus_info, sizeof (info->bus_info));
}
