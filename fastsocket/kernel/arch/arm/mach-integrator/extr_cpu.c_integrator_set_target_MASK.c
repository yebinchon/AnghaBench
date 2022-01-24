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
typedef  int u_int ;
struct icst525_vco {int s; int v; int r; } ;
struct cpufreq_policy {int cpu; unsigned int max; } ;
struct cpufreq_freqs {scalar_t__ old; scalar_t__ new; int cpu; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_3__ {int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CM_LOCK ; 
 int /*<<< orphan*/  CM_OSC ; 
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 unsigned int CPUFREQ_RELATION_L ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cclk_params ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* current ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct icst525_vco) ; 
 struct icst525_vco FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct cpufreq_policy *policy,
				 unsigned int target_freq,
				 unsigned int relation)
{
	cpumask_t cpus_allowed;
	int cpu = policy->cpu;
	struct icst525_vco vco;
	struct cpufreq_freqs freqs;
	u_int cm_osc;

	/*
	 * Save this threads cpus_allowed mask.
	 */
	cpus_allowed = current->cpus_allowed;

	/*
	 * Bind to the specified CPU.  When this call returns,
	 * we should be running on the right CPU.
	 */
	FUNC9(current, FUNC4(cpu));
	FUNC0(cpu != FUNC10());

	/* get current setting */
	cm_osc = FUNC1(CM_OSC);

	if (FUNC8()) {
		vco.s = (cm_osc >> 8) & 7;
	} else if (FUNC7()) {
		vco.s = 1;
	}
	vco.v = cm_osc & 255;
	vco.r = 22;
	freqs.old = FUNC5(&cclk_params, vco);

	/* icst525_khz_to_vco rounds down -- so we need the next
	 * larger freq in case of CPUFREQ_RELATION_L.
	 */
	if (relation == CPUFREQ_RELATION_L)
		target_freq += 999;
	if (target_freq > policy->max)
		target_freq = policy->max;
	vco = FUNC6(&cclk_params, target_freq);
	freqs.new = FUNC5(&cclk_params, vco);

	freqs.cpu = policy->cpu;

	if (freqs.old == freqs.new) {
		FUNC9(current, cpus_allowed);
		return 0;
	}

	FUNC3(&freqs, CPUFREQ_PRECHANGE);

	cm_osc = FUNC1(CM_OSC);

	if (FUNC8()) {
		cm_osc &= 0xfffff800;
		cm_osc |= vco.s << 8;
	} else if (FUNC7()) {
		cm_osc &= 0xffffff00;
	}
	cm_osc |= vco.v;

	FUNC2(0xa05f, CM_LOCK);
	FUNC2(cm_osc, CM_OSC);
	FUNC2(0, CM_LOCK);

	/*
	 * Restore the CPUs allowed mask.
	 */
	FUNC9(current, cpus_allowed);

	FUNC3(&freqs, CPUFREQ_POSTCHANGE);

	return 0;
}