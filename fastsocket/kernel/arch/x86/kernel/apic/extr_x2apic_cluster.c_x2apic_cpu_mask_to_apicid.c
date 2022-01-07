
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 unsigned int BAD_APICID ;
 int cpumask_first (struct cpumask const*) ;
 unsigned int nr_cpu_ids ;
 unsigned int per_cpu (int ,int) ;
 int x86_cpu_to_logical_apicid ;

__attribute__((used)) static unsigned int x2apic_cpu_mask_to_apicid(const struct cpumask *cpumask)
{




 int cpu = cpumask_first(cpumask);

 if ((unsigned)cpu < nr_cpu_ids)
  return per_cpu(x86_cpu_to_logical_apicid, cpu);
 else
  return BAD_APICID;
}
