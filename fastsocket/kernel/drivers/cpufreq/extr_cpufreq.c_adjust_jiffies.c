
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_freqs {int flags; scalar_t__ old; scalar_t__ new; } ;


 int CPUFREQ_CONST_LOOPS ;
 unsigned long CPUFREQ_POSTCHANGE ;
 unsigned long CPUFREQ_PRECHANGE ;
 unsigned long CPUFREQ_RESUMECHANGE ;
 unsigned long CPUFREQ_SUSPENDCHANGE ;
 int cpufreq_scale (int ,scalar_t__,scalar_t__) ;
 int dprintk (char*,int ,scalar_t__) ;
 int l_p_j_ref ;
 scalar_t__ l_p_j_ref_freq ;
 int loops_per_jiffy ;

__attribute__((used)) static void adjust_jiffies(unsigned long val, struct cpufreq_freqs *ci)
{
 if (ci->flags & CPUFREQ_CONST_LOOPS)
  return;

 if (!l_p_j_ref_freq) {
  l_p_j_ref = loops_per_jiffy;
  l_p_j_ref_freq = ci->old;
  dprintk("saving %lu as reference value for loops_per_jiffy; "
   "freq is %u kHz\n", l_p_j_ref, l_p_j_ref_freq);
 }
 if ((val == CPUFREQ_PRECHANGE && ci->old < ci->new) ||
     (val == CPUFREQ_POSTCHANGE && ci->old > ci->new) ||
     (val == CPUFREQ_RESUMECHANGE || val == CPUFREQ_SUSPENDCHANGE)) {
  loops_per_jiffy = cpufreq_scale(l_p_j_ref, l_p_j_ref_freq,
        ci->new);
  dprintk("scaling loops_per_jiffy to %lu "
   "for frequency %u kHz\n", loops_per_jiffy, ci->new);
 }
}
