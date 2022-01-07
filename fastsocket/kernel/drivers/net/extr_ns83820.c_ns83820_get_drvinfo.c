
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns83820 {int pci_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 struct ns83820* PRIV (struct net_device*) ;
 char* VERSION ;
 char* pci_name (int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void ns83820_get_drvinfo(struct net_device *ndev, struct ethtool_drvinfo *info)
{
 struct ns83820 *dev = PRIV(ndev);
 strcpy(info->driver, "ns83820");
 strcpy(info->version, VERSION);
 strcpy(info->bus_info, pci_name(dev->pci_dev));
}
