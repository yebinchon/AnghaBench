#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct s3c64xx_dvfs {int /*<<< orphan*/  vddarm_max; int /*<<< orphan*/  vddarm_min; } ;
struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {int old; int new; scalar_t__ flags; scalar_t__ cpu; } ;
struct TYPE_3__ {int frequency; size_t index; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int /*<<< orphan*/  armclk ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cpufreq_policy*,TYPE_1__*,unsigned int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s3c64xx_dvfs* s3c64xx_dvfs_table ; 
 TYPE_1__* s3c64xx_freq_table ; 
 scalar_t__ vddarm ; 

__attribute__((used)) static int FUNC7(struct cpufreq_policy *policy,
				      unsigned int target_freq,
				      unsigned int relation)
{
	int ret;
	unsigned int i;
	struct cpufreq_freqs freqs;
	struct s3c64xx_dvfs *dvfs;

	ret = FUNC2(policy, s3c64xx_freq_table,
					     target_freq, relation, &i);
	if (ret != 0)
		return ret;

	freqs.cpu = 0;
	freqs.old = FUNC0(armclk) / 1000;
	freqs.new = s3c64xx_freq_table[i].frequency;
	freqs.flags = 0;
	dvfs = &s3c64xx_dvfs_table[s3c64xx_freq_table[i].index];

	if (freqs.old == freqs.new)
		return 0;

	FUNC4("cpufreq: Transition %d-%dkHz\n", freqs.old, freqs.new);

	FUNC3(&freqs, CPUFREQ_PRECHANGE);

#ifdef CONFIG_REGULATOR
	if (vddarm && freqs.new > freqs.old) {
		ret = regulator_set_voltage(vddarm,
					    dvfs->vddarm_min,
					    dvfs->vddarm_max);
		if (ret != 0) {
			pr_err("cpufreq: Failed to set VDDARM for %dkHz: %d\n",
			       freqs.new, ret);
			goto err;
		}
	}
#endif

	ret = FUNC1(armclk, freqs.new * 1000);
	if (ret < 0) {
		FUNC5("cpufreq: Failed to set rate %dkHz: %d\n",
		       freqs.new, ret);
		goto err;
	}

#ifdef CONFIG_REGULATOR
	if (vddarm && freqs.new < freqs.old) {
		ret = regulator_set_voltage(vddarm,
					    dvfs->vddarm_min,
					    dvfs->vddarm_max);
		if (ret != 0) {
			pr_err("cpufreq: Failed to set VDDARM for %dkHz: %d\n",
			       freqs.new, ret);
			goto err_clk;
		}
	}
#endif

	FUNC3(&freqs, CPUFREQ_POSTCHANGE);

	FUNC4("cpufreq: Set actual frequency %lukHz\n",
		 FUNC0(armclk) / 1000);

	return 0;

err_clk:
	if (FUNC1(armclk, freqs.old * 1000) < 0)
		FUNC5("Failed to restore original clock rate\n");
err:
	FUNC3(&freqs, CPUFREQ_POSTCHANGE);

	return ret;
}