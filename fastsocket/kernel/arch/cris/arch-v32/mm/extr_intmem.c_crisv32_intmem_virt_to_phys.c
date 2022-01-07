
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MEM_INTMEM_START ;
 scalar_t__ RESERVED_SIZE ;
 scalar_t__ intmem_virtual ;

unsigned long crisv32_intmem_virt_to_phys(void* addr)
{
 return (unsigned long)((unsigned long )addr -
  (unsigned long)intmem_virtual + MEM_INTMEM_START +
  RESERVED_SIZE);
}
