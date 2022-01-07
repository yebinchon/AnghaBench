
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int eeprom_verh; int eeprom_verl; int pdev; } ;
struct ethtool_drvinfo {int regdump_len; int testinfo_len; int n_stats; int bus_info; int fw_version; int version; int driver; } ;


 int IXGBE_STATS_LEN ;
 int IXGBE_TEST_LEN ;
 int ixgbe_driver_name ;
 int ixgbe_driver_version ;
 int ixgbe_get_regs_len (struct net_device*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ixgbe_get_drvinfo(struct net_device *netdev,
                              struct ethtool_drvinfo *drvinfo)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 u32 nvm_track_id;

 strlcpy(drvinfo->driver, ixgbe_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, ixgbe_driver_version,
  sizeof(drvinfo->version));

 nvm_track_id = (adapter->eeprom_verh << 16) |
   adapter->eeprom_verl;
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version), "0x%08x",
   nvm_track_id);

 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
 drvinfo->n_stats = IXGBE_STATS_LEN;
 drvinfo->testinfo_len = IXGBE_TEST_LEN;
 drvinfo->regdump_len = ixgbe_get_regs_len(netdev);
}
