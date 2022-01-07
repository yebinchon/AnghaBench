
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int flags; } ;
struct pci_dev {int dev; } ;
struct pci_bus_region {int start; int end; } ;
struct pci_bus {struct resource** resource; struct pci_dev* self; } ;


 int IORESOURCE_MEM_64 ;
 int IORESOURCE_PREFETCH ;
 int PCI_PREF_BASE_UPPER32 ;
 int PCI_PREF_LIMIT_UPPER32 ;
 int PCI_PREF_MEMORY_BASE ;
 int dev_info (int *,char*,...) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pcibios_resource_to_bus (struct pci_dev*,struct pci_bus_region*,struct resource*) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void pci_setup_bridge_mmio_pref(struct pci_bus *bus)
{
 struct pci_dev *bridge = bus->self;
 struct resource *res;
 struct pci_bus_region region;
 u32 l, bu, lu;



 pci_write_config_dword(bridge, PCI_PREF_LIMIT_UPPER32, 0);


 bu = lu = 0;
 res = bus->resource[2];
 pcibios_resource_to_bus(bridge, &region, res);
 if (res->flags & IORESOURCE_PREFETCH) {
  l = (region.start >> 16) & 0xfff0;
  l |= region.end & 0xfff00000;
  if (res->flags & IORESOURCE_MEM_64) {
   bu = upper_32_bits(region.start);
   lu = upper_32_bits(region.end);
  }
  dev_info(&bridge->dev, "  bridge window %pR\n", res);
 }
 else {
  l = 0x0000fff0;
  dev_info(&bridge->dev, "  bridge window [mem pref disabled]\n");
 }
 pci_write_config_dword(bridge, PCI_PREF_MEMORY_BASE, l);


 pci_write_config_dword(bridge, PCI_PREF_BASE_UPPER32, bu);
 pci_write_config_dword(bridge, PCI_PREF_LIMIT_UPPER32, lu);
}
