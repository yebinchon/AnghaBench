
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 int titan_ht_config_read_dword (struct pci_bus*,unsigned int,int,int*) ;
 int titan_ht_config_write_dword (struct pci_bus*,unsigned int,int,int) ;

__attribute__((used)) static int titan_ht_config_write(struct pci_bus *bus, unsigned int devfn,
 int offset, int size, u32 val)
{
 uint32_t val1, val2, mask;

 titan_ht_config_read_dword(bus, devfn, offset, &val2);

 val1 = val << ((offset & 3) << 3);
 mask = ~(0xffffffffU >> ((4 - size) << 8));
 val2 &= ~(mask << ((offset & 3) << 8));

 titan_ht_config_write_dword(bus, devfn, offset, val1 | val2);

 return PCIBIOS_SUCCESSFUL;
}
