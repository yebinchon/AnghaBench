
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct ax_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int strcpy (int ,int ) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static void ax_get_drvinfo(struct net_device *dev,
      struct ethtool_drvinfo *info)
{
 struct ax_device *ax = to_ax_dev(dev);

 strcpy(info->driver, DRV_NAME);
 strcpy(info->version, DRV_VERSION);
 strcpy(info->bus_info, ax->dev->name);
}
