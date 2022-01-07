
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipi_flush_tlb_all ;
 int local_flush_tlb_all () ;
 int on_each_cpu (int ,int *,int) ;
 scalar_t__ tlb_ops_need_broadcast () ;

void flush_tlb_all(void)
{
 if (tlb_ops_need_broadcast())
  on_each_cpu(ipi_flush_tlb_all, ((void*)0), 1);
 else
  local_flush_tlb_all();
}
