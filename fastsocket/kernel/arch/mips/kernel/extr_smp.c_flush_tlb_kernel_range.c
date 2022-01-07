
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_tlb_data {unsigned long addr1; unsigned long addr2; } ;


 int flush_tlb_kernel_range_ipi ;
 int on_each_cpu (int ,struct flush_tlb_data*,int) ;

void flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 struct flush_tlb_data fd = {
  .addr1 = start,
  .addr2 = end,
 };

 on_each_cpu(flush_tlb_kernel_range_ipi, &fd, 1);
}
