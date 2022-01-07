
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {scalar_t__ io_base_phys; scalar_t__ pci_mem_offset; scalar_t__ first_busno; } ;


 long ENODEV ;
 long EOPNOTSUPP ;





 scalar_t__ isa_io_base ;
 scalar_t__ isa_mem_base ;
 struct pci_controller* pci_bus_to_hose (unsigned long) ;

long sys_pciconfig_iobase(long which, unsigned long bus, unsigned long devfn)
{
 struct pci_controller* hose;
 long result = -EOPNOTSUPP;

 hose = pci_bus_to_hose(bus);
 if (!hose)
  return -ENODEV;

 switch (which) {
 case 132:
  return (long)hose->first_busno;
 case 128:
  return (long)hose->pci_mem_offset;
 case 131:
  return (long)hose->io_base_phys;
 case 130:
  return (long)isa_io_base;
 case 129:
  return (long)isa_mem_base;
 }

 return result;
}
