
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int data; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int eedump_len; int version; int driver; } ;
struct asix_data {int eeprom_len; } ;


 int DRIVER_VERSION ;
 int driver_name ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int strncpy (int ,int ,int) ;
 int usbnet_get_drvinfo (struct net_device*,struct ethtool_drvinfo*) ;

__attribute__((used)) static void asix_get_drvinfo (struct net_device *net,
     struct ethtool_drvinfo *info)
{
 struct usbnet *dev = netdev_priv(net);
 struct asix_data *data = (struct asix_data *)&dev->data;


 usbnet_get_drvinfo(net, info);
 strncpy (info->driver, driver_name, sizeof info->driver);
 strncpy (info->version, DRIVER_VERSION, sizeof info->version);
 info->eedump_len = data->eeprom_len;
}
