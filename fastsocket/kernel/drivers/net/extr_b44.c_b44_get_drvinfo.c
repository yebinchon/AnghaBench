
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_bus {int bustype; int host_pci; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct b44 {TYPE_1__* sdev; } ;
struct TYPE_2__ {struct ssb_bus* bus; } ;


 char* DRV_MODULE_NAME ;
 char* DRV_MODULE_VERSION ;




 int WARN_ON (int) ;
 struct b44* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void b44_get_drvinfo (struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct b44 *bp = netdev_priv(dev);
 struct ssb_bus *bus = bp->sdev->bus;

 strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
 switch (bus->bustype) {
 case 131:
  strlcpy(info->bus_info, pci_name(bus->host_pci), sizeof(info->bus_info));
  break;
 case 128:
  strlcpy(info->bus_info, "SSB", sizeof(info->bus_info));
  break;
 case 130:
 case 129:
  WARN_ON(1);
  break;
 }
}
