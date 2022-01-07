
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct s3c64xx_dvfs {int vddarm_max; int vddarm_min; } ;
struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {int old; int new; scalar_t__ flags; scalar_t__ cpu; } ;
struct TYPE_3__ {int frequency; size_t index; } ;


 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 int armclk ;
 int clk_get_rate (int ) ;
 int clk_set_rate (int ,int) ;
 int cpufreq_frequency_table_target (struct cpufreq_policy*,TYPE_1__*,unsigned int,unsigned int,unsigned int*) ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 int pr_debug (char*,int,...) ;
 int pr_err (char*,...) ;
 int regulator_set_voltage (scalar_t__,int ,int ) ;
 struct s3c64xx_dvfs* s3c64xx_dvfs_table ;
 TYPE_1__* s3c64xx_freq_table ;
 scalar_t__ vddarm ;

__attribute__((used)) static int s3c64xx_cpufreq_set_target(struct cpufreq_policy *policy,
          unsigned int target_freq,
          unsigned int relation)
{
 int ret;
 unsigned int i;
 struct cpufreq_freqs freqs;
 struct s3c64xx_dvfs *dvfs;

 ret = cpufreq_frequency_table_target(policy, s3c64xx_freq_table,
          target_freq, relation, &i);
 if (ret != 0)
  return ret;

 freqs.cpu = 0;
 freqs.old = clk_get_rate(armclk) / 1000;
 freqs.new = s3c64xx_freq_table[i].frequency;
 freqs.flags = 0;
 dvfs = &s3c64xx_dvfs_table[s3c64xx_freq_table[i].index];

 if (freqs.old == freqs.new)
  return 0;

 pr_debug("cpufreq: Transition %d-%dkHz\n", freqs.old, freqs.new);

 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);
 ret = clk_set_rate(armclk, freqs.new * 1000);
 if (ret < 0) {
  pr_err("cpufreq: Failed to set rate %dkHz: %d\n",
         freqs.new, ret);
  goto err;
 }
 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);

 pr_debug("cpufreq: Set actual frequency %lukHz\n",
   clk_get_rate(armclk) / 1000);

 return 0;

err_clk:
 if (clk_set_rate(armclk, freqs.old * 1000) < 0)
  pr_err("Failed to restore original clock rate\n");
err:
 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);

 return ret;
}
