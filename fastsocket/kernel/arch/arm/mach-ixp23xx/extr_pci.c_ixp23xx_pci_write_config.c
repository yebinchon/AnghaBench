
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int* bytemask ;
 int clear_master_aborts () ;
 int* ixp23xx_pci_config_addr (int ,unsigned int,int) ;

__attribute__((used)) static int ixp23xx_pci_write_config(struct pci_bus *bus, unsigned int devfn,
     int where, int size, u32 value)
{
 u32 mask;
 u32 *addr;
 u32 temp;

 mask = ~(bytemask[size] << ((where % 0x4) * 8));
 addr = ixp23xx_pci_config_addr(bus->number, devfn, where);
 if (!addr)
  return PCIBIOS_DEVICE_NOT_FOUND;
 temp = (u32) (value) << ((where % 0x4) * 8);
 *addr = (*addr & mask) | temp;

 clear_master_aborts();

 return PCIBIOS_SUCCESSFUL;
}
