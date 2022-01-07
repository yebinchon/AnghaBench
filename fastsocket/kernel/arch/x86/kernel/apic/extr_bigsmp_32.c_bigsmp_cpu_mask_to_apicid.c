
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 unsigned int bigsmp_cpu_to_logical_apicid (int ) ;
 int cpumask_first (struct cpumask const*) ;

__attribute__((used)) static unsigned int bigsmp_cpu_mask_to_apicid(const struct cpumask *cpumask)
{
 return bigsmp_cpu_to_logical_apicid(cpumask_first(cpumask));
}
