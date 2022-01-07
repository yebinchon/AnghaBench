
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_tlb_mm (void*) ;
 int leon_flush_cache_all () ;
 scalar_t__ leon_flush_during_switch ;

void leon_switch_mm(void)
{
 flush_tlb_mm((void *)0);
 if (leon_flush_during_switch)
  leon_flush_cache_all();
}
