
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 int titan_ht_config_read_dword (struct pci_bus*,unsigned int,int,int*) ;

__attribute__((used)) static int titan_ht_config_read(struct pci_bus *bus, unsigned int devfn,
 int offset, int size, u32 * val)
{
 uint32_t dword;

 titan_ht_config_read_dword(bus, devfn, offset, &dword);

 dword >>= ((offset & 3) << 3);
 dword &= (0xffffffffU >> ((4 - size) << 8));

 return PCIBIOS_SUCCESSFUL;
}
