
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_adapter {int pdev; } ;
struct ethtool_drvinfo {int eedump_len; int regdump_len; int n_stats; int bus_info; int fw_version; int version; int driver; } ;


 int IXGB_STATS_LEN ;
 char* ixgb_driver_name ;
 char* ixgb_driver_version ;
 int ixgb_get_eeprom_len (struct net_device*) ;
 int ixgb_get_regs_len (struct net_device*) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void
ixgb_get_drvinfo(struct net_device *netdev,
     struct ethtool_drvinfo *drvinfo)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 strncpy(drvinfo->driver, ixgb_driver_name, 32);
 strncpy(drvinfo->version, ixgb_driver_version, 32);
 strncpy(drvinfo->fw_version, "N/A", 32);
 strncpy(drvinfo->bus_info, pci_name(adapter->pdev), 32);
 drvinfo->n_stats = IXGB_STATS_LEN;
 drvinfo->regdump_len = ixgb_get_regs_len(netdev);
 drvinfo->eedump_len = ixgb_get_eeprom_len(netdev);
}
