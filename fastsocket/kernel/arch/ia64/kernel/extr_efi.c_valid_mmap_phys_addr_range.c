
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EFI_MEMORY_UC ;
 int EFI_MEMORY_WB ;
 unsigned long PAGE_SHIFT ;
 int efi_mem_attribute (unsigned long,unsigned long) ;
 scalar_t__ efi_memmap_intersects (unsigned long,unsigned long) ;

int
valid_mmap_phys_addr_range (unsigned long pfn, unsigned long size)
{
 unsigned long phys_addr = pfn << PAGE_SHIFT;
 u64 attr;

 attr = efi_mem_attribute(phys_addr, size);






 if (attr & EFI_MEMORY_WB || attr & EFI_MEMORY_UC)
  return 1;







 if (efi_memmap_intersects(phys_addr, size))
  return 0;

 return 1;
}
