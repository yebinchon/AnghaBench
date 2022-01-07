
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {struct pci_bus* bus; } ;
struct pci_bus {int number; } ;
typedef scalar_t__ PCI_IO_ADDR ;


 scalar_t__ celleb_epci_get_epci_cfg (struct pci_controller*) ;
 int pr_debug (char*,scalar_t__) ;

__attribute__((used)) static PCI_IO_ADDR celleb_epci_make_config_addr(struct pci_bus *bus,
  struct pci_controller *hose, unsigned int devfn, int where)
{
 PCI_IO_ADDR addr;

 if (bus != hose->bus)
  addr = celleb_epci_get_epci_cfg(hose) +
         (((bus->number & 0xff) << 16)
   | ((devfn & 0xff) << 8)
   | (where & 0xff)
   | 0x01000000);
 else
  addr = celleb_epci_get_epci_cfg(hose) +
         (((devfn & 0xff) << 8) | (where & 0xff));

 pr_debug("EPCI: config_addr = 0x%p\n", addr);

 return addr;
}
