
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct icst525_vco {int s; int v; int r; } ;
struct cpufreq_policy {int cpu; unsigned int max; } ;
struct cpufreq_freqs {scalar_t__ old; scalar_t__ new; int cpu; } ;
typedef int cpumask_t ;
struct TYPE_3__ {int cpus_allowed; } ;


 int BUG_ON (int) ;
 int CM_LOCK ;
 int CM_OSC ;
 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 unsigned int CPUFREQ_RELATION_L ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int cclk_params ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 int cpumask_of_cpu (int) ;
 TYPE_1__* current ;
 void* icst525_khz (int *,struct icst525_vco) ;
 struct icst525_vco icst525_khz_to_vco (int *,unsigned int) ;
 scalar_t__ machine_is_cintegrator () ;
 scalar_t__ machine_is_integrator () ;
 int set_cpus_allowed (TYPE_1__*,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static int integrator_set_target(struct cpufreq_policy *policy,
     unsigned int target_freq,
     unsigned int relation)
{
 cpumask_t cpus_allowed;
 int cpu = policy->cpu;
 struct icst525_vco vco;
 struct cpufreq_freqs freqs;
 u_int cm_osc;




 cpus_allowed = current->cpus_allowed;





 set_cpus_allowed(current, cpumask_of_cpu(cpu));
 BUG_ON(cpu != smp_processor_id());


 cm_osc = __raw_readl(CM_OSC);

 if (machine_is_integrator()) {
  vco.s = (cm_osc >> 8) & 7;
 } else if (machine_is_cintegrator()) {
  vco.s = 1;
 }
 vco.v = cm_osc & 255;
 vco.r = 22;
 freqs.old = icst525_khz(&cclk_params, vco);




 if (relation == CPUFREQ_RELATION_L)
  target_freq += 999;
 if (target_freq > policy->max)
  target_freq = policy->max;
 vco = icst525_khz_to_vco(&cclk_params, target_freq);
 freqs.new = icst525_khz(&cclk_params, vco);

 freqs.cpu = policy->cpu;

 if (freqs.old == freqs.new) {
  set_cpus_allowed(current, cpus_allowed);
  return 0;
 }

 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);

 cm_osc = __raw_readl(CM_OSC);

 if (machine_is_integrator()) {
  cm_osc &= 0xfffff800;
  cm_osc |= vco.s << 8;
 } else if (machine_is_cintegrator()) {
  cm_osc &= 0xffffff00;
 }
 cm_osc |= vco.v;

 __raw_writel(0xa05f, CM_LOCK);
 __raw_writel(cm_osc, CM_OSC);
 __raw_writel(0, CM_LOCK);




 set_cpus_allowed(current, cpus_allowed);

 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);

 return 0;
}
