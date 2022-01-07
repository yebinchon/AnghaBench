
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct pci_bus {int number; } ;
typedef int int32_t ;


 int PCIBIOS_SUCCESSFUL ;
 int udelay (int) ;

__attribute__((used)) static int titan_ht_config_read_dword(struct pci_bus *bus, unsigned int devfn,
 int offset, u32 * val)
{
 volatile uint32_t address;
 int busno;

 busno = bus->number;

 address = (busno << 16) | (devfn << 8) | (offset & 0xfc) | 0x80000000;
 if (busno != 0)
  address |= 1;







 *(volatile int32_t *) 0xfb0000f0 |= 0x2;

 udelay(30);

 *(volatile int32_t *) 0xfb0006f8 = address;
 *(val) = *(volatile int32_t *) 0xfb0006fc;

 udelay(30);

 * (volatile int32_t *) 0xfb0000f0 |= 0x2;

 return PCIBIOS_SUCCESSFUL;
}
