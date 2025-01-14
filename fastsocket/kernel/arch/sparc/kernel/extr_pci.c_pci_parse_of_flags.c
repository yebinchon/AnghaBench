
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 unsigned long IORESOURCE_PREFETCH ;
 unsigned long PCI_BASE_ADDRESS_MEM_PREFETCH ;
 int PCI_BASE_ADDRESS_MEM_TYPE_1M ;
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ;
 unsigned long PCI_BASE_ADDRESS_SPACE_IO ;
 unsigned long PCI_BASE_ADDRESS_SPACE_MEMORY ;

__attribute__((used)) static unsigned long pci_parse_of_flags(u32 addr0)
{
 unsigned long flags = 0;

 if (addr0 & 0x02000000) {
  flags = IORESOURCE_MEM | PCI_BASE_ADDRESS_SPACE_MEMORY;
  flags |= (addr0 >> 22) & PCI_BASE_ADDRESS_MEM_TYPE_64;
  flags |= (addr0 >> 28) & PCI_BASE_ADDRESS_MEM_TYPE_1M;
  if (addr0 & 0x40000000)
   flags |= IORESOURCE_PREFETCH
     | PCI_BASE_ADDRESS_MEM_PREFETCH;
 } else if (addr0 & 0x01000000)
  flags = IORESOURCE_IO | PCI_BASE_ADDRESS_SPACE_IO;
 return flags;
}
