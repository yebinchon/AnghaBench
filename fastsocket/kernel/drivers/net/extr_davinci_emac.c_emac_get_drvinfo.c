
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int EMAC_MODULE_VERSION ;
 int emac_version_string ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void emac_get_drvinfo(struct net_device *ndev,
        struct ethtool_drvinfo *info)
{
 strcpy(info->driver, emac_version_string);
 strcpy(info->version, EMAC_MODULE_VERSION);
}
