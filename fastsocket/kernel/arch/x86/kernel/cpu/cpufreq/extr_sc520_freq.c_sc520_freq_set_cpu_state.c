
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cpufreq_freqs {scalar_t__ cpu; int new; int old; } ;
struct TYPE_2__ {int index; int frequency; } ;


 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 int* cpuctl ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 int dprintk (char*,int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int sc520_freq_get_cpu_frequency (int ) ;
 TYPE_1__* sc520_freq_table ;

__attribute__((used)) static void sc520_freq_set_cpu_state(unsigned int state)
{

 struct cpufreq_freqs freqs;
 u8 clockspeed_reg;

 freqs.old = sc520_freq_get_cpu_frequency(0);
 freqs.new = sc520_freq_table[state].frequency;
 freqs.cpu = 0;

 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);

 dprintk("attempting to set frequency to %i kHz\n",
   sc520_freq_table[state].frequency);

 local_irq_disable();

 clockspeed_reg = *cpuctl & ~0x03;
 *cpuctl = clockspeed_reg | sc520_freq_table[state].index;

 local_irq_enable();

 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);
}
