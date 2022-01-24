#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ power; int /*<<< orphan*/  power_setup_done; } ;
struct acpi_processor {TYPE_2__ power; TYPE_1__ flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_processor*) ; 
 scalar_t__ boot_option_idle_override ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ nocst ; 

int FUNC6(struct acpi_processor *pr)
{
	int ret = 0;

	if (boot_option_idle_override)
		return 0;

	if (!pr)
		return -EINVAL;

	if (nocst) {
		return -ENODEV;
	}

	if (!pr->flags.power_setup_done)
		return -ENODEV;

	FUNC4();
	FUNC2(&pr->power.dev);
	FUNC0(pr);
	if (pr->flags.power) {
		FUNC1(pr);
		ret = FUNC3(&pr->power.dev);
	}
	FUNC5();

	return ret;
}