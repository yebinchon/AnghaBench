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
typedef  int u32 ;
struct acpi_gpe_register_info {int base_gpe_number; int /*<<< orphan*/  enable_address; } ;
struct acpi_gpe_event_info {int gpe_number; struct acpi_gpe_register_info* register_info; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

acpi_status FUNC4(struct acpi_gpe_event_info *gpe_event_info)
{
	struct acpi_gpe_register_info *gpe_register_info;
	acpi_status status;
	u32 enable_mask;

	/* Get the info block for the entire GPE register */

	gpe_register_info = gpe_event_info->register_info;
	if (!gpe_register_info) {
		return (AE_NOT_EXIST);
	}

	/* Get current value of the enable register that contains this GPE */

	status = FUNC2(&enable_mask, &gpe_register_info->enable_address);
	if (FUNC1(status)) {
		return (status);
	}

	/* Clear just the bit that corresponds to this GPE */

	FUNC0(enable_mask, ((u32)1 <<
				     (gpe_event_info->gpe_number -
				      gpe_register_info->base_gpe_number)));

	/* Write the updated enable mask */

	status = FUNC3(enable_mask, &gpe_register_info->enable_address);
	return (status);
}