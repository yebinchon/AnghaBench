
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 struct cpumask const* cpu_online_mask ;
 struct cpumask const* cpumask_of (int ) ;

__attribute__((used)) static const struct cpumask *bigsmp_target_cpus(void)
{



 return cpumask_of(0);

}
