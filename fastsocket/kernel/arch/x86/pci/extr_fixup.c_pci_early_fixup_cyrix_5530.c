
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void pci_early_fixup_cyrix_5530(struct pci_dev *dev)
{
 u8 r;

 pci_read_config_byte(dev, 0x42, &r);
 r &= 0xfd;
 pci_write_config_byte(dev, 0x42, r);
}
