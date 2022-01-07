
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _tlbil_pid (int ) ;
 int do_flush_tlb_mm_ipi ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function (int ,int *,int) ;

void flush_tlb_kernel_range(unsigned long start, unsigned long end)
{






 _tlbil_pid(0);

}
