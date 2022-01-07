
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* regs; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_6__ {int msr; } ;


 int MSR_FP ;
 int WARN_ON (int ) ;
 TYPE_3__* current ;
 int giveup_fpu (TYPE_3__*) ;
 TYPE_3__* last_task_used_math ;
 int preemptible () ;

void enable_kernel_fp(void)
{
 WARN_ON(preemptible());







 giveup_fpu(last_task_used_math);

}
