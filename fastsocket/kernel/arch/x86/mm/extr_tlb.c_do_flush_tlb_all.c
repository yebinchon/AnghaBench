
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 scalar_t__ TLBSTATE_LAZY ;
 int __flush_tlb_all () ;
 TYPE_1__ cpu_tlbstate ;
 int leave_mm (unsigned long) ;
 scalar_t__ percpu_read (int ) ;
 unsigned long smp_processor_id () ;

__attribute__((used)) static void do_flush_tlb_all(void *info)
{
 unsigned long cpu = smp_processor_id();

 __flush_tlb_all();
 if (percpu_read(cpu_tlbstate.state) == TLBSTATE_LAZY)
  leave_mm(cpu);
}
