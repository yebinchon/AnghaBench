
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_freqs {unsigned long new; unsigned int cpu; int old; } ;
typedef int cpumask_t ;
struct TYPE_3__ {int cpus_allowed; } ;


 int BUG () ;
 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 unsigned long SAFARI_CFG_DIV_1 ;
 unsigned long SAFARI_CFG_DIV_2 ;
 unsigned long SAFARI_CFG_DIV_32 ;
 unsigned long SAFARI_CFG_DIV_MASK ;
 int cpu_online (unsigned int) ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 int cpumask_of_cpu (unsigned int) ;
 TYPE_1__* current ;
 int get_current_freq (unsigned int,unsigned long) ;
 unsigned long read_safari_cfg () ;
 int set_cpus_allowed (TYPE_1__*,int ) ;
 int sparc64_get_clock_tick (unsigned int) ;
 int write_safari_cfg (unsigned long) ;

__attribute__((used)) static void us3_set_cpu_divider_index(unsigned int cpu, unsigned int index)
{
 unsigned long new_bits, new_freq, reg;
 cpumask_t cpus_allowed;
 struct cpufreq_freqs freqs;

 if (!cpu_online(cpu))
  return;

 cpus_allowed = current->cpus_allowed;
 set_cpus_allowed(current, cpumask_of_cpu(cpu));

 new_freq = sparc64_get_clock_tick(cpu) / 1000;
 switch (index) {
 case 0:
  new_bits = SAFARI_CFG_DIV_1;
  new_freq /= 1;
  break;
 case 1:
  new_bits = SAFARI_CFG_DIV_2;
  new_freq /= 2;
  break;
 case 2:
  new_bits = SAFARI_CFG_DIV_32;
  new_freq /= 32;
  break;

 default:
  BUG();
 };

 reg = read_safari_cfg();

 freqs.old = get_current_freq(cpu, reg);
 freqs.new = new_freq;
 freqs.cpu = cpu;
 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);

 reg &= ~SAFARI_CFG_DIV_MASK;
 reg |= new_bits;
 write_safari_cfg(reg);

 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);

 set_cpus_allowed(current, cpus_allowed);
}
