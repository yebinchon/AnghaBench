
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xircom_private {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 struct xircom_private* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void netdev_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 struct xircom_private *private = netdev_priv(dev);

 strcpy(info->driver, "xircom_cb");
 strcpy(info->bus_info, pci_name(private->pdev));
}
