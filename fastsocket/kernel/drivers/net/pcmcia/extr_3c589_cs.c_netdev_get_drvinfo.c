
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int sprintf (int ,char*,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void netdev_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 strcpy(info->driver, DRV_NAME);
 strcpy(info->version, DRV_VERSION);
 sprintf(info->bus_info, "PCMCIA 0x%lx", dev->base_addr);
}
