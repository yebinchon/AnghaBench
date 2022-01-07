
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int cpu; } ;
struct TYPE_2__ {int op_points; } ;


 int centrino_model ;
 int cpufreq_frequency_table_verify (struct cpufreq_policy*,int ) ;
 TYPE_1__* per_cpu (int ,int ) ;

__attribute__((used)) static int centrino_verify (struct cpufreq_policy *policy)
{
 return cpufreq_frequency_table_verify(policy,
   per_cpu(centrino_model, policy->cpu)->op_points);
}
