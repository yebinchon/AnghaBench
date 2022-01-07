
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct catc {int usbdev; } ;


 int DRIVER_VERSION ;
 int ETHTOOL_BUSINFO_LEN ;
 int driver_name ;
 struct catc* netdev_priv (struct net_device*) ;
 int strncpy (int ,int ,int ) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static void catc_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *info)
{
 struct catc *catc = netdev_priv(dev);
 strncpy(info->driver, driver_name, ETHTOOL_BUSINFO_LEN);
 strncpy(info->version, DRIVER_VERSION, ETHTOOL_BUSINFO_LEN);
 usb_make_path (catc->usbdev, info->bus_info, sizeof info->bus_info);
}
