
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int eedump_len; int regdump_len; scalar_t__ testinfo_len; scalar_t__ n_stats; int bus_info; int fw_version; int version; int driver; } ;
struct atl2_adapter {int pdev; } ;


 char* atl2_driver_name ;
 char* atl2_driver_version ;
 int atl2_get_eeprom_len (struct net_device*) ;
 int atl2_get_regs_len (struct net_device*) ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void atl2_get_drvinfo(struct net_device *netdev,
 struct ethtool_drvinfo *drvinfo)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);

 strncpy(drvinfo->driver, atl2_driver_name, 32);
 strncpy(drvinfo->version, atl2_driver_version, 32);
 strncpy(drvinfo->fw_version, "L2", 32);
 strncpy(drvinfo->bus_info, pci_name(adapter->pdev), 32);
 drvinfo->n_stats = 0;
 drvinfo->testinfo_len = 0;
 drvinfo->regdump_len = atl2_get_regs_len(netdev);
 drvinfo->eedump_len = atl2_get_eeprom_len(netdev);
}
