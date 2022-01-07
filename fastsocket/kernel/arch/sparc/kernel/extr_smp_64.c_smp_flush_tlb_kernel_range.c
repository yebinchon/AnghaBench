
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_MASK ;
 int __flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int smp_cross_call (int *,int ,unsigned long,unsigned long) ;
 int xcall_flush_tlb_kernel_range ;

void smp_flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 start &= PAGE_MASK;
 end = PAGE_ALIGN(end);
 if (start != end) {
  smp_cross_call(&xcall_flush_tlb_kernel_range,
          0, start, end);

  __flush_tlb_kernel_range(start, end);
 }
}
