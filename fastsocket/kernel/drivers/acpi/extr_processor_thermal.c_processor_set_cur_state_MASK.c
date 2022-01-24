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
struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ throttling; } ;
struct acpi_processor {int /*<<< orphan*/  id; TYPE_2__ throttling; TYPE_1__ flags; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_processor* FUNC0 (struct acpi_device*) ; 
 unsigned long FUNC1 (struct acpi_processor*) ; 
 int FUNC2 (struct acpi_processor*,unsigned long,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct thermal_cooling_device *cdev,
			unsigned long state)
{
	struct acpi_device *device = cdev->devdata;
	struct acpi_processor *pr = FUNC0(device);
	int result = 0;
	int max_pstate;

	if (!device || !pr)
		return -EINVAL;

	max_pstate = FUNC3(pr->id);

	if (state > FUNC1(pr))
		return -EINVAL;

	if (state <= max_pstate) {
		if (pr->flags.throttling && pr->throttling.state)
			result = FUNC2(pr, 0, false);
		FUNC4(pr->id, state);
	} else {
		FUNC4(pr->id, max_pstate);
		result = FUNC2(pr,
				state - max_pstate, false);
	}
	return result;
}