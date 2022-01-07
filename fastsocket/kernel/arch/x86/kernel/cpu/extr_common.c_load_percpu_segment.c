
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gs_base; } ;


 int MSR_GS_BASE ;
 int __KERNEL_PERCPU ;
 int fs ;
 int gs ;
 TYPE_1__ irq_stack_union ;
 int load_stack_canary_segment () ;
 int loadsegment (int ,int ) ;
 scalar_t__ per_cpu (int ,int) ;
 int wrmsrl (int ,unsigned long) ;

void load_percpu_segment(int cpu)
{



 loadsegment(gs, 0);
 wrmsrl(MSR_GS_BASE, (unsigned long)per_cpu(irq_stack_union.gs_base, cpu));

 load_stack_canary_segment();
}
