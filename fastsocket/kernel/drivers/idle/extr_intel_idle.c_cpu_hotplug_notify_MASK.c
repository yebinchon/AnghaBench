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
struct notifier_block {int dummy; } ;
struct cpuidle_device {int /*<<< orphan*/  registered; } ;

/* Variables and functions */
#define  CPU_ONLINE 128 
 int /*<<< orphan*/  LAPIC_TIMER_ALWAYS_RELIABLE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  __setup_broadcast_timer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  intel_idle_cpuidle_devices ; 
 int /*<<< orphan*/  lapic_timer_reliable_states ; 
 struct cpuidle_device* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *n,
			      unsigned long action, void *hcpu)
{
	int hotcpu = (unsigned long)hcpu;
	struct cpuidle_device *dev;

	switch (action & 0xf) {
	case CPU_ONLINE:

		if (lapic_timer_reliable_states != LAPIC_TIMER_ALWAYS_RELIABLE)
			FUNC2(hotcpu, __setup_broadcast_timer,
						 (void *)true, 1);

		/*
		 * Some systems can hotplug a cpu at runtime after
		 * the kernel has booted, we have to initialize the
		 * driver in this case
		 */
		dev = FUNC1(intel_idle_cpuidle_devices, hotcpu);
		if (!dev->registered)
			FUNC0(hotcpu);

		break;
	}
	return NOTIFY_OK;
}