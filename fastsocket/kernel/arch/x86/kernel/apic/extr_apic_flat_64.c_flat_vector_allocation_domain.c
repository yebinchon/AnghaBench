
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int APIC_ALL_CPUS ;
 int * cpumask_bits (struct cpumask*) ;
 int cpumask_clear (struct cpumask*) ;

__attribute__((used)) static void flat_vector_allocation_domain(int cpu, struct cpumask *retmask)
{
 cpumask_clear(retmask);
 cpumask_bits(retmask)[0] = APIC_ALL_CPUS;
}
