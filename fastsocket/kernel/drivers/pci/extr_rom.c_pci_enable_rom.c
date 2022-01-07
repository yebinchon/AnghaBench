
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int flags; } ;
struct pci_dev {int rom_base_reg; struct resource* resource; } ;
struct pci_bus_region {int start; } ;


 int PCI_ROM_ADDRESS_ENABLE ;
 int PCI_ROM_ADDRESS_MASK ;
 int PCI_ROM_RESOURCE ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pcibios_resource_to_bus (struct pci_dev*,struct pci_bus_region*,struct resource*) ;

int pci_enable_rom(struct pci_dev *pdev)
{
 struct resource *res = pdev->resource + PCI_ROM_RESOURCE;
 struct pci_bus_region region;
 u32 rom_addr;

 if (!res->flags)
  return -1;

 pcibios_resource_to_bus(pdev, &region, res);
 pci_read_config_dword(pdev, pdev->rom_base_reg, &rom_addr);
 rom_addr &= ~PCI_ROM_ADDRESS_MASK;
 rom_addr |= region.start | PCI_ROM_ADDRESS_ENABLE;
 pci_write_config_dword(pdev, pdev->rom_base_reg, rom_addr);
 return 0;
}
