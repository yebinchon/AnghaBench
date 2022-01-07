
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sn_hwperf_op_info {int ret; TYPE_1__* a; } ;
typedef int cpumask_t ;
struct TYPE_5__ {int cpus_allowed; } ;
struct TYPE_4__ {int arg; } ;


 int EINVAL ;
 int SN_HWPERF_ARG_ANY_CPU ;
 int SN_HWPERF_ARG_CPU_MASK ;
 int SN_HWPERF_ARG_OBJID_MASK ;
 int SN_HWPERF_ARG_USE_IPI_MASK ;
 int cpu_online (int) ;
 int cpumask_of_cpu (int) ;
 TYPE_2__* current ;
 int get_cpu () ;
 int nr_cpu_ids ;
 int set_cpus_allowed (TYPE_2__*,int ) ;
 int smp_call_function_single (int,int (*) (struct sn_hwperf_op_info*),struct sn_hwperf_op_info*,int) ;
 int sn_hwperf_call_sal (struct sn_hwperf_op_info*) ;

__attribute__((used)) static int sn_hwperf_op_cpu(struct sn_hwperf_op_info *op_info)
{
 u32 cpu;
 u32 use_ipi;
 int r = 0;
 cpumask_t save_allowed;

 cpu = (op_info->a->arg & SN_HWPERF_ARG_CPU_MASK) >> 32;
 use_ipi = op_info->a->arg & SN_HWPERF_ARG_USE_IPI_MASK;
 op_info->a->arg &= SN_HWPERF_ARG_OBJID_MASK;

 if (cpu != SN_HWPERF_ARG_ANY_CPU) {
  if (cpu >= nr_cpu_ids || !cpu_online(cpu)) {
   r = -EINVAL;
   goto out;
  }
 }

 if (cpu == SN_HWPERF_ARG_ANY_CPU || cpu == get_cpu()) {

  sn_hwperf_call_sal(op_info);
 }
 else {
  if (use_ipi) {

   smp_call_function_single(cpu, sn_hwperf_call_sal,
    op_info, 1);
  }
  else {

   save_allowed = current->cpus_allowed;
   set_cpus_allowed(current, cpumask_of_cpu(cpu));
   sn_hwperf_call_sal(op_info);
   set_cpus_allowed(current, save_allowed);
  }
 }
 r = op_info->ret;

out:
 return r;
}
