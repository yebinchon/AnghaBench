
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unw_frame_info {scalar_t__ sw; } ;
typedef scalar_t__ __u64 ;
struct TYPE_3__ {scalar_t__ ksp; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int atomic_inc (int *) ;
 int cpu_relax () ;
 int crash_save_this_cpu () ;
 TYPE_2__* current ;
 int ia64_set_psr_mc () ;
 int kdump_cpu_frozen ;
 int* kdump_status ;
 int local_irq_disable () ;
 int mb () ;
 int smp_processor_id () ;

void
kdump_cpu_freeze(struct unw_frame_info *info, void *arg)
{
 int cpuid;

 local_irq_disable();
 cpuid = smp_processor_id();
 crash_save_this_cpu();
 current->thread.ksp = (__u64)info->sw - 16;

 ia64_set_psr_mc();

 atomic_inc(&kdump_cpu_frozen);
 kdump_status[cpuid] = 1;
 mb();
 for (;;)
  cpu_relax();
}
