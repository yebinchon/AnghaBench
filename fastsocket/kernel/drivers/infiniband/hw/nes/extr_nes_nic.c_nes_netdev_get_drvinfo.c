
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct nes_vnic {TYPE_1__* nesdev; } ;
struct nes_adapter {int firmware_version; } ;
struct ethtool_drvinfo {scalar_t__ regdump_len; scalar_t__ eedump_len; scalar_t__ testinfo_len; int n_stats; int version; int fw_version; int bus_info; int driver; } ;
struct TYPE_2__ {int pcidev; struct nes_adapter* nesadapter; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int nes_netdev_get_stats_count (struct net_device*) ;
 struct nes_vnic* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int sprintf (int ,char*,int,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void nes_netdev_get_drvinfo(struct net_device *netdev,
  struct ethtool_drvinfo *drvinfo)
{
 struct nes_vnic *nesvnic = netdev_priv(netdev);
 struct nes_adapter *nesadapter = nesvnic->nesdev->nesadapter;

 strcpy(drvinfo->driver, DRV_NAME);
 strcpy(drvinfo->bus_info, pci_name(nesvnic->nesdev->pcidev));
 sprintf(drvinfo->fw_version, "%u.%u", nesadapter->firmware_version>>16,
    nesadapter->firmware_version & 0x000000ff);
 strcpy(drvinfo->version, DRV_VERSION);
 drvinfo->n_stats = nes_netdev_get_stats_count(netdev);
 drvinfo->testinfo_len = 0;
 drvinfo->eedump_len = 0;
 drvinfo->regdump_len = 0;
}
