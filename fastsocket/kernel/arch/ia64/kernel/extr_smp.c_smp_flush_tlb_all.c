
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ local_flush_tlb_all ;
 int on_each_cpu (void (*) (void*),int *,int) ;

void
smp_flush_tlb_all (void)
{
 on_each_cpu((void (*)(void *))local_flush_tlb_all, ((void*)0), 1);
}
