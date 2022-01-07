
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int DRIVER_VERSION ;
 int driver_name ;
 int strlcpy (int ,int ,int) ;
 int usbnet_get_drvinfo (struct net_device*,struct ethtool_drvinfo*) ;

__attribute__((used)) static void sierra_net_get_drvinfo(struct net_device *net,
  struct ethtool_drvinfo *info)
{

 usbnet_get_drvinfo(net, info);
 strlcpy(info->driver, driver_name, sizeof(info->driver));
 strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
}
