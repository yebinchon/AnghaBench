
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int flags; } ;
struct pci_dev {int dev; } ;
struct pci_bus_region {int start; int end; } ;
struct pci_bus {struct resource** resource; int subordinate; int secondary; struct pci_dev* self; } ;


 int IORESOURCE_IO ;
 int PCI_IO_BASE ;
 int PCI_IO_BASE_UPPER16 ;
 int dev_info (int *,char*,...) ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pcibios_resource_to_bus (struct pci_dev*,struct pci_bus_region*,struct resource*) ;

__attribute__((used)) static void pci_setup_bridge_io(struct pci_bus *bus)
{
 struct pci_dev *bridge = bus->self;
 struct resource *res;
 struct pci_bus_region region;
 u32 l, io_upper16;

 if (pci_is_enabled(bridge))
  return;

 dev_info(&bridge->dev, "PCI bridge to [bus %02x-%02x]\n",
   bus->secondary, bus->subordinate);


 res = bus->resource[0];
 pcibios_resource_to_bus(bridge, &region, res);
 if (res->flags & IORESOURCE_IO) {
  pci_read_config_dword(bridge, PCI_IO_BASE, &l);
  l &= 0xffff0000;
  l |= (region.start >> 8) & 0x00f0;
  l |= region.end & 0xf000;

  io_upper16 = (region.end & 0xffff0000) | (region.start >> 16);
  dev_info(&bridge->dev, "  bridge window %pR\n", res);
 } else {

  io_upper16 = 0;
  l = 0x00f0;
  dev_info(&bridge->dev, "  bridge window [io  disabled]\n");
 }

 pci_write_config_dword(bridge, PCI_IO_BASE_UPPER16, 0x0000ffff);

 pci_write_config_dword(bridge, PCI_IO_BASE, l);

 pci_write_config_dword(bridge, PCI_IO_BASE_UPPER16, io_upper16);
}
