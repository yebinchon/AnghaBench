
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int CPU_STATE_CONFIGURED ;
 int MAX_CPU_ADDRESS ;
 int POLARIZATION_UNKNWN ;
 int* __cpu_logical_map ;
 scalar_t__ cpu_known (int) ;
 int cpu_present_map ;
 int cpu_set (int,int ) ;
 int cpu_stopped (int) ;
 int cpumask_first (int *) ;
 int cpumask_next (int,int *) ;
 int nr_cpu_ids ;
 int * smp_cpu_polarization ;
 int * smp_cpu_state ;

__attribute__((used)) static int smp_rescan_cpus_sigp(cpumask_t avail)
{
 int cpu_id, logical_cpu;

 logical_cpu = cpumask_first(&avail);
 if (logical_cpu >= nr_cpu_ids)
  return 0;
 for (cpu_id = 0; cpu_id <= MAX_CPU_ADDRESS; cpu_id++) {
  if (cpu_known(cpu_id))
   continue;
  __cpu_logical_map[logical_cpu] = cpu_id;
  smp_cpu_polarization[logical_cpu] = POLARIZATION_UNKNWN;
  if (!cpu_stopped(logical_cpu))
   continue;
  cpu_set(logical_cpu, cpu_present_map);
  smp_cpu_state[logical_cpu] = CPU_STATE_CONFIGURED;
  logical_cpu = cpumask_next(logical_cpu, &avail);
  if (logical_cpu >= nr_cpu_ids)
   break;
 }
 return 0;
}
