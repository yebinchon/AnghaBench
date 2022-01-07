
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int eedump_len; int regdump_len; int bus_info; int fw_version; int version; int driver; } ;
struct e1000_adapter {int eeprom_vers; int pdev; } ;


 int e1000_get_eeprom_len (struct net_device*) ;
 int e1000_get_regs_len (struct net_device*) ;
 int e1000e_driver_name ;
 int e1000e_driver_version ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void e1000_get_drvinfo(struct net_device *netdev,
         struct ethtool_drvinfo *drvinfo)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, e1000e_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, e1000e_driver_version,
  sizeof(drvinfo->version));




 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
  "%d.%d-%d",
  (adapter->eeprom_vers & 0xF000) >> 12,
  (adapter->eeprom_vers & 0x0FF0) >> 4,
  (adapter->eeprom_vers & 0x000F));

 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
 drvinfo->regdump_len = e1000_get_regs_len(netdev);
 drvinfo->eedump_len = e1000_get_eeprom_len(netdev);
}
