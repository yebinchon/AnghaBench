
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int CPUFREQ_HIGH ;
 int CPUFREQ_LOW ;
 unsigned long cur_freq ;
 int do_set_cpu_speed (int ,int ) ;
 unsigned long get_speed_proc () ;
 scalar_t__ low_freq ;
 scalar_t__ no_schedule ;
 unsigned long ppc_proc_freq ;
 scalar_t__ sleep_freq ;

__attribute__((used)) static int pmac_cpufreq_resume(struct cpufreq_policy *policy)
{

 if (get_speed_proc)
  cur_freq = get_speed_proc();
 else
  cur_freq = 0;





 do_set_cpu_speed(sleep_freq == low_freq ?
    CPUFREQ_LOW : CPUFREQ_HIGH, 0);

 ppc_proc_freq = cur_freq * 1000ul;

 no_schedule = 0;
 return 0;
}
