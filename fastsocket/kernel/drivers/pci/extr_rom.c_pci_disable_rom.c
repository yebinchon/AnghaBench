
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int rom_base_reg; } ;


 int PCI_ROM_ADDRESS_ENABLE ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;

void pci_disable_rom(struct pci_dev *pdev)
{
 u32 rom_addr;
 pci_read_config_dword(pdev, pdev->rom_base_reg, &rom_addr);
 rom_addr &= ~PCI_ROM_ADDRESS_ENABLE;
 pci_write_config_dword(pdev, pdev->rom_base_reg, rom_addr);
}
