
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int eedump_len; int regdump_len; int bus_info; int fw_version; int version; int driver; } ;


 int XENA_EEPROM_SPACE ;
 int XENA_REG_SPACE ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 char* s2io_driver_name ;
 char* s2io_driver_version ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void s2io_ethtool_gdrvinfo(struct net_device *dev,
      struct ethtool_drvinfo *info)
{
 struct s2io_nic *sp = netdev_priv(dev);

 strncpy(info->driver, s2io_driver_name, sizeof(info->driver));
 strncpy(info->version, s2io_driver_version, sizeof(info->version));
 strncpy(info->fw_version, "", sizeof(info->fw_version));
 strncpy(info->bus_info, pci_name(sp->pdev), sizeof(info->bus_info));
 info->regdump_len = XENA_REG_SPACE;
 info->eedump_len = XENA_EEPROM_SPACE;
}
