
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu_vpd {int fcode_major; int fcode_minor; } ;
struct niu {int pdev; TYPE_1__* parent; struct niu_vpd vpd; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_2__ {scalar_t__ plat_type; } ;


 int DRV_MODULE_NAME ;
 int DRV_MODULE_VERSION ;
 scalar_t__ PLAT_TYPE_NIU ;
 struct niu* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int sprintf (int ,char*,int,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void niu_get_drvinfo(struct net_device *dev,
       struct ethtool_drvinfo *info)
{
 struct niu *np = netdev_priv(dev);
 struct niu_vpd *vpd = &np->vpd;

 strcpy(info->driver, DRV_MODULE_NAME);
 strcpy(info->version, DRV_MODULE_VERSION);
 sprintf(info->fw_version, "%d.%d",
  vpd->fcode_major, vpd->fcode_minor);
 if (np->parent->plat_type != PLAT_TYPE_NIU)
  strcpy(info->bus_info, pci_name(np->pdev));
}
