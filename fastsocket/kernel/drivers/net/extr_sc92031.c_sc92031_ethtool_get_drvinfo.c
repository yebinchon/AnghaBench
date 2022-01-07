
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc92031_priv {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 int SC92031_NAME ;
 struct sc92031_priv* netdev_priv (struct net_device*) ;
 int pci_name (struct pci_dev*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void sc92031_ethtool_get_drvinfo(struct net_device *dev,
  struct ethtool_drvinfo *drvinfo)
{
 struct sc92031_priv *priv = netdev_priv(dev);
 struct pci_dev *pdev = priv->pdev;

 strcpy(drvinfo->driver, SC92031_NAME);
 strcpy(drvinfo->bus_info, pci_name(pdev));
}
