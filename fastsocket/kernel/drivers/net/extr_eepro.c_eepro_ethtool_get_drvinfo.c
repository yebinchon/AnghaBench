
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

__attribute__((used)) static void eepro_ethtool_get_drvinfo(struct net_device *dev,
     struct ethtool_drvinfo *drvinfo)
{
 strcpy(drvinfo->driver, DRV_NAME);
 strcpy(drvinfo->version, DRV_VERSION);
 sprintf(drvinfo->bus_info, "ISA 0x%lx", dev->base_addr);
}
