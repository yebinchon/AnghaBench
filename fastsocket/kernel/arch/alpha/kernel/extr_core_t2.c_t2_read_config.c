
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 unsigned long T2_CONF ;
 int conf_read (unsigned long,unsigned char) ;
 scalar_t__ mk_conf_addr (struct pci_bus*,unsigned int,int,unsigned long*,unsigned char*) ;

__attribute__((used)) static int
t2_read_config(struct pci_bus *bus, unsigned int devfn, int where,
        int size, u32 *value)
{
 unsigned long addr, pci_addr;
 unsigned char type1;
 int shift;
 long mask;

 if (mk_conf_addr(bus, devfn, where, &pci_addr, &type1))
  return PCIBIOS_DEVICE_NOT_FOUND;

 mask = (size - 1) * 8;
 shift = (where & 3) * 8;
 addr = (pci_addr << 5) + mask + T2_CONF;
 *value = conf_read(addr, type1) >> (shift);
 return PCIBIOS_SUCCESSFUL;
}
