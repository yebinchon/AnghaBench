
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct yenta_socket {struct pci_dev* dev; } ;
struct pci_dev {TYPE_1__* subordinate; int * resource; } ;
struct pci_bus_region {int start; } ;
struct TYPE_2__ {int subordinate; int secondary; int primary; } ;


 int CB_BRIDGE_CONTROL ;
 int CB_BRIDGE_CRST ;
 int CB_BRIDGE_ISAEN ;
 int CB_BRIDGE_POSTEN ;
 int CB_BRIDGE_PREFETCH0 ;
 int CB_BRIDGE_PREFETCH1 ;
 int CB_BRIDGE_VGAEN ;
 int CB_LEGACY_MODE_BASE ;
 int L1_CACHE_BYTES ;
 int PCI_BASE_ADDRESS_0 ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int PCI_COMMAND_WAIT ;
 int PCI_LATENCY_TIMER ;
 int PCI_PRIMARY_BUS ;
 int config_readw (struct yenta_socket*,int ) ;
 int config_writeb (struct yenta_socket*,int ,int) ;
 int config_writel (struct yenta_socket*,int ,int) ;
 int config_writew (struct yenta_socket*,int ,int) ;
 int pcibios_resource_to_bus (struct pci_dev*,struct pci_bus_region*,int *) ;

__attribute__((used)) static void yenta_config_init(struct yenta_socket *socket)
{
 u16 bridge;
 struct pci_dev *dev = socket->dev;
 struct pci_bus_region region;

 pcibios_resource_to_bus(socket->dev, &region, &dev->resource[0]);

 config_writel(socket, CB_LEGACY_MODE_BASE, 0);
 config_writel(socket, PCI_BASE_ADDRESS_0, region.start);
 config_writew(socket, PCI_COMMAND,
   PCI_COMMAND_IO |
   PCI_COMMAND_MEMORY |
   PCI_COMMAND_MASTER |
   PCI_COMMAND_WAIT);


 config_writeb(socket, PCI_CACHE_LINE_SIZE, L1_CACHE_BYTES / 4);
 config_writeb(socket, PCI_LATENCY_TIMER, 168);
 config_writel(socket, PCI_PRIMARY_BUS,
  (176 << 24) |
  (dev->subordinate->subordinate << 16) |
  (dev->subordinate->secondary << 8) |
  dev->subordinate->primary);







 bridge = config_readw(socket, CB_BRIDGE_CONTROL);
 bridge &= ~(CB_BRIDGE_CRST | CB_BRIDGE_PREFETCH1 | CB_BRIDGE_ISAEN | CB_BRIDGE_VGAEN);
 bridge |= CB_BRIDGE_PREFETCH0 | CB_BRIDGE_POSTEN;
 config_writew(socket, CB_BRIDGE_CONTROL, bridge);
}
