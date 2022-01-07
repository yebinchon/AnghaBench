
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {scalar_t__ eedump_len; scalar_t__ regdump_len; int bus_info; int fw_version; int version; int driver; } ;


 struct ql3_adapter* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 char* ql3xxx_driver_name ;
 char* ql3xxx_driver_version ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void ql_get_drvinfo(struct net_device *ndev,
      struct ethtool_drvinfo *drvinfo)
{
 struct ql3_adapter *qdev = netdev_priv(ndev);
 strncpy(drvinfo->driver, ql3xxx_driver_name, 32);
 strncpy(drvinfo->version, ql3xxx_driver_version, 32);
 strncpy(drvinfo->fw_version, "N/A", 32);
 strncpy(drvinfo->bus_info, pci_name(qdev->pdev), 32);
 drvinfo->regdump_len = 0;
 drvinfo->eedump_len = 0;
}
