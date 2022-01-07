
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cpufreq_policy {unsigned int min; unsigned int max; scalar_t__ cpu; } ;


 int EINVAL ;
 int gx_set_cpuspeed (unsigned int) ;
 unsigned int gx_validate_speed (unsigned int,int *,int *) ;
 unsigned int max_duration ;
 unsigned int stock_freq ;

__attribute__((used)) static int cpufreq_gx_target(struct cpufreq_policy *policy,
        unsigned int target_freq,
        unsigned int relation)
{
 u8 tmp1, tmp2;
 unsigned int tmp_freq;

 if (!stock_freq || !policy)
  return -EINVAL;

 policy->cpu = 0;

 tmp_freq = gx_validate_speed(target_freq, &tmp1, &tmp2);
 while (tmp_freq < policy->min) {
  tmp_freq += stock_freq / max_duration;
  tmp_freq = gx_validate_speed(tmp_freq, &tmp1, &tmp2);
 }
 while (tmp_freq > policy->max) {
  tmp_freq -= stock_freq / max_duration;
  tmp_freq = gx_validate_speed(tmp_freq, &tmp1, &tmp2);
 }

 gx_set_cpuspeed(tmp_freq);

 return 0;
}
