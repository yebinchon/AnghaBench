
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int eedump_len; int regdump_len; scalar_t__ testinfo_len; scalar_t__ n_stats; int bus_info; int fw_version; int version; int driver; } ;
struct atl1e_adapter {int pdev; } ;


 char* atl1e_driver_name ;
 char* atl1e_driver_version ;
 int atl1e_get_eeprom_len (struct net_device*) ;
 int atl1e_get_regs_len (struct net_device*) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void atl1e_get_drvinfo(struct net_device *netdev,
  struct ethtool_drvinfo *drvinfo)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);

 strncpy(drvinfo->driver, atl1e_driver_name, 32);
 strncpy(drvinfo->version, atl1e_driver_version, 32);
 strncpy(drvinfo->fw_version, "L1e", 32);
 strncpy(drvinfo->bus_info, pci_name(adapter->pdev), 32);
 drvinfo->n_stats = 0;
 drvinfo->testinfo_len = 0;
 drvinfo->regdump_len = atl1e_get_regs_len(netdev);
 drvinfo->eedump_len = atl1e_get_eeprom_len(netdev);
}
