
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mask_info {struct mask_info* next; int mask; } ;
typedef int cpumask_t ;


 scalar_t__ cpu_isset (unsigned int,int ) ;
 int cpumask_of_cpu (unsigned int) ;
 int cpus_clear (int ) ;
 scalar_t__ cpus_empty (int ) ;
 int machine_has_topology ;
 int topology_enabled ;

__attribute__((used)) static cpumask_t cpu_group_map(struct mask_info *info, unsigned int cpu)
{
 cpumask_t mask;

 cpus_clear(mask);
 if (!topology_enabled || !machine_has_topology)
  return cpumask_of_cpu(cpu);
 while (info) {
  if (cpu_isset(cpu, info->mask)) {
   mask = info->mask;
   break;
  }
  info = info->next;
 }
 if (cpus_empty(mask))
  mask = cpumask_of_cpu(cpu);
 return mask;
}
