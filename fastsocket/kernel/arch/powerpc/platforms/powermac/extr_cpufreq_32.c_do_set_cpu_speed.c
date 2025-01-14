
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_freqs {scalar_t__ old; scalar_t__ new; int cpu; } ;


 int CPUFREQ_HIGH ;
 int CPUFREQ_LOW ;
 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 int CPU_FTR_L3CR ;
 unsigned long L3CR_L3E ;
 unsigned long _get_L3CR () ;
 int _set_L3CR (unsigned long) ;
 scalar_t__ cpu_has_feature (int ) ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 scalar_t__ cur_freq ;
 void* hi_freq ;
 void* low_freq ;
 int set_speed_proc (int) ;
 int smp_processor_id () ;

__attribute__((used)) static int do_set_cpu_speed(int speed_mode, int notify)
{
 struct cpufreq_freqs freqs;
 unsigned long l3cr;
 static unsigned long prev_l3cr;

 freqs.old = cur_freq;
 freqs.new = (speed_mode == CPUFREQ_HIGH) ? hi_freq : low_freq;
 freqs.cpu = smp_processor_id();

 if (freqs.old == freqs.new)
  return 0;

 if (notify)
  cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);
 if (speed_mode == CPUFREQ_LOW &&
     cpu_has_feature(CPU_FTR_L3CR)) {
  l3cr = _get_L3CR();
  if (l3cr & L3CR_L3E) {
   prev_l3cr = l3cr;
   _set_L3CR(0);
  }
 }
 set_speed_proc(speed_mode == CPUFREQ_LOW);
 if (speed_mode == CPUFREQ_HIGH &&
     cpu_has_feature(CPU_FTR_L3CR)) {
  l3cr = _get_L3CR();
  if ((prev_l3cr & L3CR_L3E) && l3cr != prev_l3cr)
   _set_L3CR(prev_l3cr);
 }
 if (notify)
  cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);
 cur_freq = (speed_mode == CPUFREQ_HIGH) ? hi_freq : low_freq;

 return 0;
}
