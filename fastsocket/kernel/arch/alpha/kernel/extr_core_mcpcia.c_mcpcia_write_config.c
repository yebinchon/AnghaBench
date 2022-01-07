
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_controller {int dummy; } ;
struct pci_bus {struct pci_controller* sysdata; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int __kernel_insql (int ,int) ;
 int conf_write (unsigned long,int ,unsigned char,struct pci_controller*) ;
 scalar_t__ mk_conf_addr (struct pci_bus*,unsigned int,int,struct pci_controller*,unsigned long*,unsigned char*) ;

__attribute__((used)) static int
mcpcia_write_config(struct pci_bus *bus, unsigned int devfn, int where,
      int size, u32 value)
{
 struct pci_controller *hose = bus->sysdata;
 unsigned long addr;
 unsigned char type1;

 if (mk_conf_addr(bus, devfn, where, hose, &addr, &type1))
  return PCIBIOS_DEVICE_NOT_FOUND;

 addr |= (size - 1) * 8;
 value = __kernel_insql(value, where & 3);
 conf_write(addr, value, type1, hose);
 return PCIBIOS_SUCCESSFUL;
}
