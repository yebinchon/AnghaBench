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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_3__ {scalar_t__ address; } ;
struct TYPE_4__ {TYPE_1__ xpm1b_control_block; TYPE_1__ xpm1a_control_block; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  hw_write_pm1_control ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(u32 pm1a_control, u32 pm1b_control)
{
	acpi_status status;

	FUNC1(hw_write_pm1_control);

	status =
	    FUNC2(pm1a_control, &acpi_gbl_FADT.xpm1a_control_block);
	if (FUNC0(status)) {
		FUNC3(status);
	}

	if (acpi_gbl_FADT.xpm1b_control_block.address) {
		status =
		    FUNC2(pm1b_control,
				  &acpi_gbl_FADT.xpm1b_control_block);
	}
	FUNC3(status);
}