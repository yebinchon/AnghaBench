#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {scalar_t__ start; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  transition_latency; } ;
struct cpufreq_policy {int cpu; int cur; int /*<<< orphan*/  cpus; TYPE_1__ cpuinfo; } ;
struct TYPE_6__ {int frequency; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int CPUFREQ_TABLE_END ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ SDCASR_OFFSET ; 
 int /*<<< orphan*/  cpu_online_map ; 
 int FUNC0 (struct cpufreq_policy*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC10 (int,int /*<<< orphan*/ *) ; 
 int* FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 TYPE_2__* pas_freqs ; 
 unsigned long ppc_proc_freq ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  sdcasr_mapbase ; 
 int /*<<< orphan*/  sdcpwr_mapbase ; 

__attribute__((used)) static int FUNC14(struct cpufreq_policy *policy)
{
	const u32 *max_freqp;
	u32 max_freq;
	int i, cur_astate;
	struct resource res;
	struct device_node *cpu, *dn;
	int err = -ENODEV;

	cpu = FUNC10(policy->cpu, NULL);

	if (!cpu)
		goto out;

	dn = FUNC9(NULL, NULL, "1682m-sdc");
	if (!dn)
		dn = FUNC9(NULL, NULL,
					     "pasemi,pwrficient-sdc");
	if (!dn)
		goto out;
	err = FUNC8(dn, 0, &res);
	FUNC12(dn);
	if (err)
		goto out;
	sdcasr_mapbase = FUNC6(res.start + SDCASR_OFFSET, 0x2000);
	if (!sdcasr_mapbase) {
		err = -EINVAL;
		goto out;
	}

	dn = FUNC9(NULL, NULL, "1682m-gizmo");
	if (!dn)
		dn = FUNC9(NULL, NULL,
					     "pasemi,pwrficient-gizmo");
	if (!dn) {
		err = -ENODEV;
		goto out_unmap_sdcasr;
	}
	err = FUNC8(dn, 0, &res);
	FUNC12(dn);
	if (err)
		goto out_unmap_sdcasr;
	sdcpwr_mapbase = FUNC6(res.start, 0x1000);
	if (!sdcpwr_mapbase) {
		err = -EINVAL;
		goto out_unmap_sdcasr;
	}

	FUNC13("init cpufreq on CPU %d\n", policy->cpu);

	max_freqp = FUNC11(cpu, "clock-frequency", NULL);
	if (!max_freqp) {
		err = -EINVAL;
		goto out_unmap_sdcpwr;
	}

	/* we need the freq in kHz */
	max_freq = *max_freqp / 1000;

	FUNC13("max clock-frequency is at %u kHz\n", max_freq);
	FUNC13("initializing frequency table\n");

	/* initialize frequency table */
	for (i=0; pas_freqs[i].frequency!=CPUFREQ_TABLE_END; i++) {
		pas_freqs[i].frequency = FUNC3(pas_freqs[i].index) * 100000;
		FUNC13("%d: %d\n", i, pas_freqs[i].frequency);
	}

	policy->cpuinfo.transition_latency = FUNC5();

	cur_astate = FUNC4(policy->cpu);
	FUNC13("current astate is at %d\n",cur_astate);

	policy->cur = pas_freqs[cur_astate].frequency;
	FUNC2(policy->cpus, &cpu_online_map);

	ppc_proc_freq = policy->cur * 1000ul;

	FUNC1(pas_freqs, policy->cpu);

	/* this ensures that policy->cpuinfo_min and policy->cpuinfo_max
	 * are set correctly
	 */
	return FUNC0(policy, pas_freqs);

out_unmap_sdcpwr:
	FUNC7(sdcpwr_mapbase);

out_unmap_sdcasr:
	FUNC7(sdcasr_mapbase);
out:
	return err;
}