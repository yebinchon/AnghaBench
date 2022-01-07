
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icst525_vco {int dummy; } ;
struct TYPE_2__ {int max_freq; int min_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; void* min; void* max; } ;


 int cclk_params ;
 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int ) ;
 void* icst525_khz (int *,struct icst525_vco) ;
 struct icst525_vco icst525_khz_to_vco (int *,void*) ;

__attribute__((used)) static int integrator_verify_policy(struct cpufreq_policy *policy)
{
 struct icst525_vco vco;

 cpufreq_verify_within_limits(policy,
         policy->cpuinfo.min_freq,
         policy->cpuinfo.max_freq);

 vco = icst525_khz_to_vco(&cclk_params, policy->max);
 policy->max = icst525_khz(&cclk_params, vco);

 vco = icst525_khz_to_vco(&cclk_params, policy->min);
 policy->min = icst525_khz(&cclk_params, vco);

 cpufreq_verify_within_limits(policy,
         policy->cpuinfo.min_freq,
         policy->cpuinfo.max_freq);

 return 0;
}
