
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
typedef struct cpumask const* cpumask_var_t ;


 int GFP_ATOMIC ;
 int alloc_cpumask_var (struct cpumask const**,int ) ;
 struct cpumask const* cpu_online_mask ;
 int cpumask_and (struct cpumask const*,struct cpumask const*,struct cpumask const*) ;
 int free_cpumask_var (struct cpumask const*) ;
 int summit_cpu_mask_to_apicid (struct cpumask const*) ;
 int summit_cpu_to_logical_apicid (int ) ;

__attribute__((used)) static unsigned int summit_cpu_mask_to_apicid_and(const struct cpumask *inmask,
         const struct cpumask *andmask)
{
 int apicid = summit_cpu_to_logical_apicid(0);
 cpumask_var_t cpumask;

 if (!alloc_cpumask_var(&cpumask, GFP_ATOMIC))
  return apicid;

 cpumask_and(cpumask, inmask, andmask);
 cpumask_and(cpumask, cpumask, cpu_online_mask);
 apicid = summit_cpu_mask_to_apicid(cpumask);

 free_cpumask_var(cpumask);

 return apicid;
}
