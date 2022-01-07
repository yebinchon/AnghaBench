
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {char* fw_version; scalar_t__ regdump_len; int bus_info; int version; int driver; } ;
struct au1000_private {int mac_id; } ;


 char* DRV_NAME ;
 char* DRV_VERSION ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int sprintf (int ,char*,char*,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
au1000_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct au1000_private *aup = netdev_priv(dev);

 strcpy(info->driver, DRV_NAME);
 strcpy(info->version, DRV_VERSION);
 info->fw_version[0] = '\0';
 sprintf(info->bus_info, "%s %d", DRV_NAME, aup->mac_id);
 info->regdump_len = 0;
}
