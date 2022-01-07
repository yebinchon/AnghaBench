
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 struct cpumask const* cpumask_of (int ) ;

__attribute__((used)) static inline const struct cpumask *cpu_core_mask(int cpu)
{
 return cpumask_of(0);
}
