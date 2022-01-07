
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ board_info_t ;
struct TYPE_5__ {int name; } ;


 int CARDNAME ;
 int DRV_VERSION ;
 int strcpy (int ,int ) ;
 TYPE_1__* to_dm9000_board (struct net_device*) ;
 TYPE_2__* to_platform_device (int ) ;

__attribute__((used)) static void dm9000_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 board_info_t *dm = to_dm9000_board(dev);

 strcpy(info->driver, CARDNAME);
 strcpy(info->version, DRV_VERSION);
 strcpy(info->bus_info, to_platform_device(dm->dev)->name);
}
