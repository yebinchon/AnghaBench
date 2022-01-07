
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igbvf_adapter {int pdev; } ;
struct ethtool_drvinfo {int eedump_len; int regdump_len; int bus_info; int version; int driver; } ;


 int igbvf_driver_name ;
 int igbvf_driver_version ;
 int igbvf_get_eeprom_len (struct net_device*) ;
 int igbvf_get_regs_len (struct net_device*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void igbvf_get_drvinfo(struct net_device *netdev,
                              struct ethtool_drvinfo *drvinfo)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, igbvf_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, igbvf_driver_version,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
 drvinfo->regdump_len = igbvf_get_regs_len(netdev);
 drvinfo->eedump_len = igbvf_get_eeprom_len(netdev);
}
