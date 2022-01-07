
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EFI_MEMORY_UC ;
 int EFI_MEMORY_WB ;
 int kern_mem_attribute (unsigned long,unsigned long) ;

int
valid_phys_addr_range (unsigned long phys_addr, unsigned long size)
{
 u64 attr;







 attr = kern_mem_attribute(phys_addr, size);
 if (attr & EFI_MEMORY_WB || attr & EFI_MEMORY_UC)
  return 1;
 return 0;
}
