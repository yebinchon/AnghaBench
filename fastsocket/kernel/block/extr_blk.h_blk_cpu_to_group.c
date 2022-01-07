
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int NR_CPUS ;
 struct cpumask* cpu_coregroup_mask (int) ;
 int cpumask_first (struct cpumask const*) ;
 scalar_t__ likely (int) ;
 struct cpumask const* topology_thread_cpumask (int) ;

__attribute__((used)) static inline int blk_cpu_to_group(int cpu)
{
 int group = NR_CPUS;






 return cpu;


 if (likely(group < NR_CPUS))
  return group;
 return cpu;
}
