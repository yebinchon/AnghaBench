
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skge_port {TYPE_1__* hw; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_2__ {int pdev; } ;


 char* DRV_NAME ;
 char* DRV_VERSION ;
 struct skge_port* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void skge_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *info)
{
 struct skge_port *skge = netdev_priv(dev);

 strcpy(info->driver, DRV_NAME);
 strcpy(info->version, DRV_VERSION);
 strcpy(info->fw_version, "N/A");
 strcpy(info->bus_info, pci_name(skge->hw->pdev));
}
