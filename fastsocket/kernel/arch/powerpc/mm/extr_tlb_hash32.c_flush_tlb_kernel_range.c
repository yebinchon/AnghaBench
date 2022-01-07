
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FINISH_FLUSH ;
 int flush_range (int *,unsigned long,unsigned long) ;
 int init_mm ;

void flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 flush_range(&init_mm, start, end);
 FINISH_FLUSH;
}
