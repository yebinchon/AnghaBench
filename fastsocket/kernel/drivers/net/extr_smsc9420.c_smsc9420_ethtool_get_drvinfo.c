
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int bus_info; int driver; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void smsc9420_ethtool_get_drvinfo(struct net_device *netdev,
      struct ethtool_drvinfo *drvinfo)
{
 struct smsc9420_pdata *pd = netdev_priv(netdev);

 strcpy(drvinfo->driver, DRV_NAME);
 strcpy(drvinfo->bus_info, pci_name(pd->pdev));
 strcpy(drvinfo->version, DRV_VERSION);
}
