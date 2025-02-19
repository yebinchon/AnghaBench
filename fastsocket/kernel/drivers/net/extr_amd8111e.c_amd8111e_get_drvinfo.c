
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct amd8111e_priv {struct pci_dev* pci_dev; } ;


 int MODULE_NAME ;
 int MODULE_VERS ;
 int chip_version ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int pci_name (struct pci_dev*) ;
 int sprintf (int ,char*,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void amd8111e_get_drvinfo(struct net_device* dev, struct ethtool_drvinfo *info)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 struct pci_dev *pci_dev = lp->pci_dev;
 strcpy (info->driver, MODULE_NAME);
 strcpy (info->version, MODULE_VERS);
 sprintf(info->fw_version,"%u",chip_version);
 strcpy (info->bus_info, pci_name(pci_dev));
}
