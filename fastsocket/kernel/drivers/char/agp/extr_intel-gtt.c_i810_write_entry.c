
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ gtt; } ;




 int I810_PTE_LOCAL ;
 int I810_PTE_VALID ;
 int I830_PTE_SYSTEM_CACHED ;
 TYPE_1__ intel_private ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void i810_write_entry(dma_addr_t addr, unsigned int entry,
        unsigned int flags)
{
 u32 pte_flags = I810_PTE_VALID;

 switch (flags) {
 case 129:
  pte_flags |= I810_PTE_LOCAL;
  break;
 case 128:
  pte_flags |= I830_PTE_SYSTEM_CACHED;
  break;
 }

 writel(addr | pte_flags, intel_private.gtt + entry);
}
