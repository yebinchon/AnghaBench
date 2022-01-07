
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;


 int cpufreq_frequency_table_put_attr (int ) ;
 int iounmap (scalar_t__) ;
 scalar_t__ sdcasr_mapbase ;
 scalar_t__ sdcpwr_mapbase ;

__attribute__((used)) static int pas_cpufreq_cpu_exit(struct cpufreq_policy *policy)
{
 if (sdcasr_mapbase)
  iounmap(sdcasr_mapbase);
 if (sdcpwr_mapbase)
  iounmap(sdcpwr_mapbase);

 cpufreq_frequency_table_put_attr(policy->cpu);
 return 0;
}
