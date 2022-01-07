
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {scalar_t__ eedump_len; scalar_t__ regdump_len; int bus_info; int fw_version; int version; int driver; } ;


 char* DRV_NAME ;
 int GFAR_INFOSTR_LEN ;
 char* gfar_driver_version ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static void gfar_gdrvinfo(struct net_device *dev, struct
       ethtool_drvinfo *drvinfo)
{
 strncpy(drvinfo->driver, DRV_NAME, GFAR_INFOSTR_LEN);
 strncpy(drvinfo->version, gfar_driver_version, GFAR_INFOSTR_LEN);
 strncpy(drvinfo->fw_version, "N/A", GFAR_INFOSTR_LEN);
 strncpy(drvinfo->bus_info, "N/A", GFAR_INFOSTR_LEN);
 drvinfo->regdump_len = 0;
 drvinfo->eedump_len = 0;
}
