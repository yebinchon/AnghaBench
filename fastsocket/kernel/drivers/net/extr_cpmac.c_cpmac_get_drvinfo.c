
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {char* fw_version; scalar_t__ regdump_len; int bus_info; int version; int driver; } ;


 char* CPMAC_VERSION ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void cpmac_get_drvinfo(struct net_device *dev,
         struct ethtool_drvinfo *info)
{
 strcpy(info->driver, "cpmac");
 strcpy(info->version, CPMAC_VERSION);
 info->fw_version[0] = '\0';
 sprintf(info->bus_info, "%s", "cpmac");
 info->regdump_len = 0;
}
