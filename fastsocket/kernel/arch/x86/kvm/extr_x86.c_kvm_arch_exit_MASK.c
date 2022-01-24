#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int /*<<< orphan*/  X86_FEATURE_CONSTANT_TSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_guest_cbs ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * kvm_x86_ops ; 
 int /*<<< orphan*/  kvmclock_cpu_notifier_block ; 
 int /*<<< orphan*/  kvmclock_cpufreq_notifier_block ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	FUNC3(&kvm_guest_cbs);

	if (!FUNC0(X86_FEATURE_CONSTANT_TSC))
		FUNC1(&kvmclock_cpufreq_notifier_block,
					    CPUFREQ_TRANSITION_NOTIFIER);
#ifdef CONFIG_HOTPLUG_CPU
	unregister_hotcpu_notifier(&kvmclock_cpu_notifier_block);
#endif
	kvm_x86_ops = NULL;
	FUNC2();
}