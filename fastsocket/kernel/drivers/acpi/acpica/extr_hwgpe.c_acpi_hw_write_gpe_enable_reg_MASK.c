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
struct acpi_gpe_register_info {int /*<<< orphan*/  enable_address; int /*<<< orphan*/  enable_for_run; } ;
struct acpi_gpe_event_info {struct acpi_gpe_register_info* register_info; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

acpi_status
FUNC2(struct acpi_gpe_event_info * gpe_event_info)
{
	struct acpi_gpe_register_info *gpe_register_info;
	acpi_status status;

	FUNC0();

	/* Get the info block for the entire GPE register */

	gpe_register_info = gpe_event_info->register_info;
	if (!gpe_register_info) {
		return (AE_NOT_EXIST);
	}

	/* Write the entire GPE (runtime) enable register */

	status = FUNC1(gpe_register_info->enable_for_run,
			       &gpe_register_info->enable_address);

	return (status);
}