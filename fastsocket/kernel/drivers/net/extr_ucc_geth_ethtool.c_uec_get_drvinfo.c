
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int regdump_len; scalar_t__ eedump_len; int bus_info; int fw_version; int version; int driver; } ;


 char* DRV_NAME ;
 char* DRV_VERSION ;
 int strncpy (int ,char*,int) ;
 int uec_get_regs_len (struct net_device*) ;

__attribute__((used)) static void
uec_get_drvinfo(struct net_device *netdev,
                       struct ethtool_drvinfo *drvinfo)
{
 strncpy(drvinfo->driver, DRV_NAME, 32);
 strncpy(drvinfo->version, DRV_VERSION, 32);
 strncpy(drvinfo->fw_version, "N/A", 32);
 strncpy(drvinfo->bus_info, "QUICC ENGINE", 32);
 drvinfo->eedump_len = 0;
 drvinfo->regdump_len = uec_get_regs_len(netdev);
}
