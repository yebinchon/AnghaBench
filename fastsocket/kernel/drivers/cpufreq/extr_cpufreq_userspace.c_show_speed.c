
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;
typedef int ssize_t ;


 int cpu_cur_freq ;
 int per_cpu (int ,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_speed(struct cpufreq_policy *policy, char *buf)
{
 return sprintf(buf, "%u\n", per_cpu(cpu_cur_freq, policy->cpu));
}
