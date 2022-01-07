
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int fw_version; int version; int driver; } ;


 char* HV_DRV_VERSION ;
 char* KBUILD_MODNAME ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void netvsc_get_drvinfo(struct net_device *net,
          struct ethtool_drvinfo *info)
{
 strcpy(info->driver, KBUILD_MODNAME);
 strcpy(info->version, HV_DRV_VERSION);
 strcpy(info->fw_version, "N/A");
}
