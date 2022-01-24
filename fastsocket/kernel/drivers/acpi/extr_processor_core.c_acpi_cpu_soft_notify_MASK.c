#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ need_hotplug_init; } ;
struct acpi_processor {TYPE_1__ flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 unsigned long CPU_DEAD ; 
 unsigned long CPU_ONLINE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_processor*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_processor*) ; 
 struct acpi_processor* FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  processors ; 

__attribute__((used)) static int FUNC8(struct notifier_block *nfb,
		unsigned long action, void *hcpu)
{
	unsigned int cpu = (unsigned long)hcpu;
	struct acpi_processor *pr = FUNC6(processors, cpu);

	if (action == CPU_ONLINE && pr) {
		/* CPU got physically hotplugged and onlined the first time:
		 * Initialize missing things
		 */
		if (pr->flags.need_hotplug_init) {
			FUNC7("Will online and init hotplugged CPU: %d\n",
				pr->id);
			FUNC0(FUNC4(pr), "Failed to start CPU:"
				" %d\n", pr->id);
			pr->flags.need_hotplug_init = 0;
		/* Normal CPU soft online event */
		} else {
			FUNC2(pr);
			FUNC1(pr);
			FUNC3(pr, action);
			FUNC5(pr);
		}
	}
	if (action == CPU_DEAD && pr) {
		/* invalidate the flag.throttling after one CPU is offline */
		FUNC3(pr, action);
	}

	return NOTIFY_OK;
}