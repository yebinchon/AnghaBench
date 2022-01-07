
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;
struct pci_dev {int dev; } ;
struct pci_bus_region {int end; int start; } ;
struct pci_bus {struct resource** resource; int subordinate; int secondary; struct pci_dev* self; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int PCI_CB_IO_BASE_0 ;
 int PCI_CB_IO_BASE_1 ;
 int PCI_CB_IO_LIMIT_0 ;
 int PCI_CB_IO_LIMIT_1 ;
 int PCI_CB_MEMORY_BASE_0 ;
 int PCI_CB_MEMORY_BASE_1 ;
 int PCI_CB_MEMORY_LIMIT_0 ;
 int PCI_CB_MEMORY_LIMIT_1 ;
 int dev_info (int *,char*,struct resource*,...) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int pcibios_resource_to_bus (struct pci_dev*,struct pci_bus_region*,struct resource*) ;

void pci_setup_cardbus(struct pci_bus *bus)
{
 struct pci_dev *bridge = bus->self;
 struct resource *res;
 struct pci_bus_region region;

 dev_info(&bridge->dev, "CardBus bridge to [bus %02x-%02x]\n",
   bus->secondary, bus->subordinate);

 res = bus->resource[0];
 pcibios_resource_to_bus(bridge, &region, res);
 if (res->flags & IORESOURCE_IO) {




  dev_info(&bridge->dev, "  bridge window %pR\n", res);
  pci_write_config_dword(bridge, PCI_CB_IO_BASE_0,
     region.start);
  pci_write_config_dword(bridge, PCI_CB_IO_LIMIT_0,
     region.end);
 }

 res = bus->resource[1];
 pcibios_resource_to_bus(bridge, &region, res);
 if (res->flags & IORESOURCE_IO) {
  dev_info(&bridge->dev, "  bridge window %pR\n", res);
  pci_write_config_dword(bridge, PCI_CB_IO_BASE_1,
     region.start);
  pci_write_config_dword(bridge, PCI_CB_IO_LIMIT_1,
     region.end);
 }

 res = bus->resource[2];
 pcibios_resource_to_bus(bridge, &region, res);
 if (res->flags & IORESOURCE_MEM) {
  dev_info(&bridge->dev, "  bridge window %pR\n", res);
  pci_write_config_dword(bridge, PCI_CB_MEMORY_BASE_0,
     region.start);
  pci_write_config_dword(bridge, PCI_CB_MEMORY_LIMIT_0,
     region.end);
 }

 res = bus->resource[3];
 pcibios_resource_to_bus(bridge, &region, res);
 if (res->flags & IORESOURCE_MEM) {
  dev_info(&bridge->dev, "  bridge window %pR\n", res);
  pci_write_config_dword(bridge, PCI_CB_MEMORY_BASE_1,
     region.start);
  pci_write_config_dword(bridge, PCI_CB_MEMORY_LIMIT_1,
     region.end);
 }
}
