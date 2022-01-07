
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct pci_bus {int bridge_ctl; int subordinate; int secondary; struct pci_dev* self; } ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 unsigned long IORESOURCE_PREFETCH ;
 int PCI_BRIDGE_CONTROL ;
 int dev_info (int *,char*,int ,int ) ;
 int pci_setup_bridge_io (struct pci_bus*) ;
 int pci_setup_bridge_mmio (struct pci_bus*) ;
 int pci_setup_bridge_mmio_pref (struct pci_bus*) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void __pci_setup_bridge(struct pci_bus *bus, unsigned long type)
{
 struct pci_dev *bridge = bus->self;

 dev_info(&bridge->dev, "PCI bridge to [bus %02x-%02x]\n",
   bus->secondary, bus->subordinate);

 if (type & IORESOURCE_IO)
  pci_setup_bridge_io(bus);

 if (type & IORESOURCE_MEM)
  pci_setup_bridge_mmio(bus);

 if (type & IORESOURCE_PREFETCH)
  pci_setup_bridge_mmio_pref(bus);

 pci_write_config_word(bridge, PCI_BRIDGE_CONTROL, bus->bridge_ctl);
}
