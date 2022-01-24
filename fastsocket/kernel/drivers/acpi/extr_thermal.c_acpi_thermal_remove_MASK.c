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
struct acpi_thermal {int /*<<< orphan*/  lock; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_thermal* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_thermal*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_thermal*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device, int type)
{
	struct acpi_thermal *tz = NULL;

	if (!device || !FUNC0(device))
		return -EINVAL;

	tz = FUNC0(device);

	FUNC1(device);
	FUNC2(tz);
	FUNC4(&tz->lock);
	FUNC3(tz);
	return 0;
}