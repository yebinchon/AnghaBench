
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int node; } ;
struct of_device {int node; } ;
struct net_device {int dummy; } ;
struct linux_prom_registers {int which_io; } ;
struct happy_meal {int happy_flags; struct pci_dev* happy_dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int HFLAG_PCI ;
 struct happy_meal* netdev_priv (struct net_device*) ;
 struct linux_prom_registers* of_get_property (int ,char*,int *) ;
 char* pci_name (struct pci_dev*) ;
 int sprintf (int ,char*,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void hme_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct happy_meal *hp = netdev_priv(dev);

 strcpy(info->driver, "sunhme");
 strcpy(info->version, "2.02");
 if (hp->happy_flags & HFLAG_PCI) {
  struct pci_dev *pdev = hp->happy_dev;
  strcpy(info->bus_info, pci_name(pdev));
 }
}
