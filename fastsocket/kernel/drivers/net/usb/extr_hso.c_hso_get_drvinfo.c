
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hso_net {TYPE_1__* parent; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct TYPE_2__ {int usb; } ;


 int DRIVER_VERSION ;
 int ETHTOOL_BUSINFO_LEN ;
 int driver_name ;
 struct hso_net* netdev_priv (struct net_device*) ;
 int strncpy (int ,int ,int ) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static void hso_get_drvinfo(struct net_device *net, struct ethtool_drvinfo *info)
{
 struct hso_net *odev = netdev_priv(net);

 strncpy(info->driver, driver_name, ETHTOOL_BUSINFO_LEN);
 strncpy(info->version, DRIVER_VERSION, ETHTOOL_BUSINFO_LEN);
 usb_make_path(odev->parent->usb, info->bus_info, sizeof info->bus_info);
}
