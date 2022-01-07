
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_tlb_all () ;

void local_flush_tlb_kernel_range(unsigned long start, unsigned long end)
{

        flush_tlb_all();
}
