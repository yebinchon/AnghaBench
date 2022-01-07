
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {int pci_dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRV_NAME ;
 int FORCEDETH_VERSION ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void nv_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct fe_priv *np = netdev_priv(dev);
 strcpy(info->driver, DRV_NAME);
 strcpy(info->version, FORCEDETH_VERSION);
 strcpy(info->bus_info, pci_name(np->pci_dev));
}
