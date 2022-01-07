
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;


 int acq ;
 int ia64_fetchadd (int,int *,int ) ;
 int local_flush_tlb_all () ;
 TYPE_1__* local_tlb_flush_counts ;
 size_t smp_processor_id () ;

void
smp_local_flush_tlb(void)
{







 ia64_fetchadd(1, &local_tlb_flush_counts[smp_processor_id()].count, acq);
 local_flush_tlb_all();
}
