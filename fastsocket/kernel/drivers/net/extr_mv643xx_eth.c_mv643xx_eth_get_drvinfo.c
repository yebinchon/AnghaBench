
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int n_stats; int bus_info; int fw_version; int version; int driver; } ;


 int ARRAY_SIZE (int ) ;
 char* mv643xx_eth_driver_name ;
 char* mv643xx_eth_driver_version ;
 int mv643xx_eth_stats ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void mv643xx_eth_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *drvinfo)
{
 strncpy(drvinfo->driver, mv643xx_eth_driver_name, 32);
 strncpy(drvinfo->version, mv643xx_eth_driver_version, 32);
 strncpy(drvinfo->fw_version, "N/A", 32);
 strncpy(drvinfo->bus_info, "platform", 32);
 drvinfo->n_stats = ARRAY_SIZE(mv643xx_eth_stats);
}
