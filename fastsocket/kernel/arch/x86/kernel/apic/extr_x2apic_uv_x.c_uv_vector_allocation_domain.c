
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int cpumask_clear (struct cpumask*) ;
 int cpumask_set_cpu (int,struct cpumask*) ;

__attribute__((used)) static void uv_vector_allocation_domain(int cpu, struct cpumask *retmask)
{
 cpumask_clear(retmask);
 cpumask_set_cpu(cpu, retmask);
}
