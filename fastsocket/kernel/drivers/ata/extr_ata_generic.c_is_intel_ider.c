
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_dword (struct pci_dev*,int,scalar_t__*) ;
 int pci_read_config_word (struct pci_dev*,int,scalar_t__*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static int is_intel_ider(struct pci_dev *dev)
{


 u32 r;
 u16 t;


 pci_read_config_dword(dev, 0xF8, &r);

 if (r != 0)
  return 0;


 pci_read_config_word(dev, 0x40, &t);
 if (t != 0)
  return 0;



 pci_write_config_word(dev, 0x40, 1);
 pci_read_config_word(dev, 0x40, &t);
 if (t) {
  pci_write_config_word(dev, 0x40, 0);
  return 0;
 }
 return 1;
}
