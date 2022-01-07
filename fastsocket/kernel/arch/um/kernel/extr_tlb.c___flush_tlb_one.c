
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_SIZE ;
 int flush_tlb_kernel_range_common (unsigned long,scalar_t__) ;

void __flush_tlb_one(unsigned long addr)
{
 flush_tlb_kernel_range_common(addr, addr + PAGE_SIZE);
}
