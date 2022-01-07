
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_freqs {unsigned int cpu; unsigned int old; unsigned int new; } ;


 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 int dprintk (char*,unsigned int,unsigned int) ;

__attribute__((used)) static void cpufreq_out_of_sync(unsigned int cpu, unsigned int old_freq,
    unsigned int new_freq)
{
 struct cpufreq_freqs freqs;

 dprintk("Warning: CPU frequency out of sync: cpufreq and timing "
        "core thinks of %u, is %u kHz.\n", old_freq, new_freq);

 freqs.cpu = cpu;
 freqs.old = old_freq;
 freqs.new = new_freq;
 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);
 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);
}
