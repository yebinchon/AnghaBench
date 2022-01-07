
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int fw_version; int version; int driver; } ;


 int BOND_ABI_VERSION ;
 int DRV_NAME ;
 int DRV_VERSION ;
 int snprintf (int ,int,char*,int) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void bond_ethtool_get_drvinfo(struct net_device *bond_dev,
        struct ethtool_drvinfo *drvinfo)
{
 strncpy(drvinfo->driver, DRV_NAME, 32);
 strncpy(drvinfo->version, DRV_VERSION, 32);
 snprintf(drvinfo->fw_version, 32, "%d", BOND_ABI_VERSION);
}
