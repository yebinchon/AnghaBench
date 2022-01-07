
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msr {int dummy; } ;
struct cpumask {int dummy; } ;


 int __rdmsr_on_cpu ;
 int __rwmsr_on_cpus (struct cpumask const*,int ,struct msr*,int ) ;

void rdmsr_on_cpus(const struct cpumask *mask, u32 msr_no, struct msr *msrs)
{
 __rwmsr_on_cpus(mask, msr_no, msrs, __rdmsr_on_cpu);
}
