
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int CARDNAME ;
 int dev_name (int ) ;
 int strncpy (int ,int ,int) ;
 int version ;

__attribute__((used)) static void
smc_ethtool_getdrvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 strncpy(info->driver, CARDNAME, sizeof(info->driver));
 strncpy(info->version, version, sizeof(info->version));
 strncpy(info->bus_info, dev_name(dev->dev.parent), sizeof(info->bus_info));
}
