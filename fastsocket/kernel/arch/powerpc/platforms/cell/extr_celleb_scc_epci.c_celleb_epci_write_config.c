
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_controller {scalar_t__ first_busno; } ;
struct pci_bus {scalar_t__ number; } ;
typedef scalar_t__ PCI_IO_ADDR ;


 int BUG_ON (int) ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int celleb_epci_check_abort (struct pci_controller*,scalar_t__) ;
 scalar_t__ celleb_epci_get_epci_base (struct pci_controller*) ;
 int celleb_epci_get_epci_cfg (struct pci_controller*) ;
 scalar_t__ celleb_epci_make_config_addr (struct pci_bus*,struct pci_controller*,unsigned int,int) ;
 int clear_and_disable_master_abort_interrupt (struct pci_controller*) ;
 int out_8 (scalar_t__,int ) ;
 int out_be16 (scalar_t__,int ) ;
 int out_be32 (scalar_t__,int ) ;
 int out_le16 (scalar_t__,int ) ;
 int out_le32 (scalar_t__,int ) ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;

__attribute__((used)) static int celleb_epci_write_config(struct pci_bus *bus,
   unsigned int devfn, int where, int size, u32 val)
{
 PCI_IO_ADDR epci_base;
 PCI_IO_ADDR addr;
 struct pci_controller *hose = pci_bus_to_host(bus);


 BUG_ON(where % size);

 if (!celleb_epci_get_epci_cfg(hose))
  return PCIBIOS_DEVICE_NOT_FOUND;

 if (bus->number == hose->first_busno && devfn == 0) {


  epci_base = celleb_epci_get_epci_base(hose);
  addr = epci_base + where;

  switch (size) {
  case 1:
   out_8(addr, val);
   break;
  case 2:
   out_be16(addr, val);
   break;
  case 4:
   out_be32(addr, val);
   break;
  default:
   return PCIBIOS_DEVICE_NOT_FOUND;
  }

 } else {

  clear_and_disable_master_abort_interrupt(hose);
  addr = celleb_epci_make_config_addr(bus, hose, devfn, where);

  switch (size) {
  case 1:
   out_8(addr, val);
   break;
  case 2:
   out_le16(addr, val);
   break;
  case 4:
   out_le32(addr, val);
   break;
  default:
   return PCIBIOS_DEVICE_NOT_FOUND;
  }
 }

 return celleb_epci_check_abort(hose, addr);
}
