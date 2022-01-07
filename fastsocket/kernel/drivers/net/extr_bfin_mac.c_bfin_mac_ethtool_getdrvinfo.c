
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* DRV_NAME ;
 char* DRV_VERSION ;
 char* dev_name (int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void bfin_mac_ethtool_getdrvinfo(struct net_device *dev,
     struct ethtool_drvinfo *info)
{
 strcpy(info->driver, DRV_NAME);
 strcpy(info->version, DRV_VERSION);
 strcpy(info->fw_version, "N/A");
 strcpy(info->bus_info, dev_name(&dev->dev));
}
