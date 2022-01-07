
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void serverworks_fixup_ht1000(struct pci_dev *pdev)
{
 u8 btr;

 pci_read_config_byte(pdev, 0x5A, &btr);
 btr &= ~0x40;
 btr |= 0x3;
 pci_write_config_byte(pdev, 0x5A, btr);
}
