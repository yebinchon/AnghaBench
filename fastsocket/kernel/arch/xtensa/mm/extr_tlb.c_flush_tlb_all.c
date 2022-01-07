
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_dtlb_all () ;
 int __flush_itlb_all () ;

void flush_tlb_all (void)
{
 __flush_itlb_all();
 __flush_dtlb_all();
}
