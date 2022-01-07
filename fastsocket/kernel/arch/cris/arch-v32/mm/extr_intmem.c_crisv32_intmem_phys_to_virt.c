
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MEM_INTMEM_START ;
 unsigned long RESERVED_SIZE ;
 scalar_t__ intmem_virtual ;

void* crisv32_intmem_phys_to_virt(unsigned long addr)
{
 return (void *)(addr - (MEM_INTMEM_START + RESERVED_SIZE) +
  (unsigned long)intmem_virtual);
}
