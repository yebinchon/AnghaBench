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
struct TYPE_5__ {int /*<<< orphan*/  transition_latency; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpu; int /*<<< orphan*/  cpus; int /*<<< orphan*/  cur; TYPE_1__ cpuinfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_map ; 
 int FUNC0 (struct cpufreq_policy*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* g5_cpu_freqs ; 
 size_t FUNC3 () ; 
 int /*<<< orphan*/  transition_latency ; 

__attribute__((used)) static int FUNC4(struct cpufreq_policy *policy)
{
	policy->cpuinfo.transition_latency = transition_latency;
	policy->cur = g5_cpu_freqs[FUNC3()].frequency;
	/* secondary CPUs are tied to the primary one by the
	 * cpufreq core if in the secondary policy we tell it that
	 * it actually must be one policy together with all others. */
	FUNC2(policy->cpus, &cpu_online_map);
	FUNC1(g5_cpu_freqs, policy->cpu);

	return FUNC0(policy,
		g5_cpu_freqs);
}