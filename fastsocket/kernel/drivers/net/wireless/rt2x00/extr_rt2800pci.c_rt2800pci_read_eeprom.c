
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 scalar_t__ rt2800pci_efuse_detect (struct rt2x00_dev*) ;
 int rt2800pci_read_eeprom_efuse (struct rt2x00_dev*) ;
 int rt2800pci_read_eeprom_pci (struct rt2x00_dev*) ;
 int rt2800pci_read_eeprom_soc (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_is_soc (struct rt2x00_dev*) ;

__attribute__((used)) static int rt2800pci_read_eeprom(struct rt2x00_dev *rt2x00dev)
{
 int retval;

 if (rt2x00_is_soc(rt2x00dev))
  retval = rt2800pci_read_eeprom_soc(rt2x00dev);
 else if (rt2800pci_efuse_detect(rt2x00dev))
  retval = rt2800pci_read_eeprom_efuse(rt2x00dev);
 else
  retval = rt2800pci_read_eeprom_pci(rt2x00dev);

 return retval;
}
