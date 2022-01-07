
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_ARTOP_ATP865 ;
 scalar_t__ PCI_DEVICE_ID_ARTOP_ATP865R ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static int init_chipset_aec62xx(struct pci_dev *dev)
{

 if ((dev->device == PCI_DEVICE_ID_ARTOP_ATP865) ||
     (dev->device == PCI_DEVICE_ID_ARTOP_ATP865R)) {
  u8 reg49h = 0, reg4ah = 0;

  pci_read_config_byte(dev, 0x49, &reg49h);
  pci_write_config_byte(dev, 0x49, reg49h & ~0x30);

  pci_read_config_byte(dev, 0x4a, &reg4ah);
  pci_write_config_byte(dev, 0x4a, reg4ah & ~0x01);

  pci_read_config_byte(dev, 0x4a, &reg4ah);
  pci_write_config_byte(dev, 0x4a, reg4ah | 0x80);
 }

 return 0;
}
