
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;
struct bmac_data {TYPE_2__* mdev; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ ofdev; } ;


 char* dev_name (int *) ;
 struct bmac_data* netdev_priv (struct net_device*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void bmac_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct bmac_data *bp = netdev_priv(dev);
 strcpy(info->driver, "bmac");
 strcpy(info->bus_info, dev_name(&bp->mdev->ofdev.dev));
}
