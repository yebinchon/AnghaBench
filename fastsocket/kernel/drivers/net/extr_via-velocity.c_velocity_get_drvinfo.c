
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int VELOCITY_NAME ;
 int VELOCITY_VERSION ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void velocity_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct velocity_info *vptr = netdev_priv(dev);
 strcpy(info->driver, VELOCITY_NAME);
 strcpy(info->version, VELOCITY_VERSION);
 strcpy(info->bus_info, pci_name(vptr->pdev));
}
