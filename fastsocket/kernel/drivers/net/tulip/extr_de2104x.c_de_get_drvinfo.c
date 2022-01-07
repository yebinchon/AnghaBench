
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int eedump_len; int bus_info; int version; int driver; } ;
struct de_private {int pdev; } ;


 int DE_EEPROM_SIZE ;
 int DRV_NAME ;
 int DRV_VERSION ;
 struct de_private* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void de_get_drvinfo (struct net_device *dev,struct ethtool_drvinfo *info)
{
 struct de_private *de = netdev_priv(dev);

 strcpy (info->driver, DRV_NAME);
 strcpy (info->version, DRV_VERSION);
 strcpy (info->bus_info, pci_name(de->pdev));
 info->eedump_len = DE_EEPROM_SIZE;
}
