
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int clk_put (int ) ;
 int cpuclk ;

__attribute__((used)) static int sh_cpufreq_exit(struct cpufreq_policy *policy)
{
 clk_put(cpuclk);
 return 0;
}
