
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int regdump_len; int bus_info; int version; int driver; } ;


 int KBUILD_MODNAME ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int pch_driver_version ;
 int pch_gbe_get_regs_len (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void pch_gbe_get_drvinfo(struct net_device *netdev,
     struct ethtool_drvinfo *drvinfo)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, pch_driver_version, sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
 drvinfo->regdump_len = pch_gbe_get_regs_len(netdev);
}
