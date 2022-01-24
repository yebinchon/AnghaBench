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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  smi_command; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITREG_SCI_ENABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SYS_MODE_ACPI ; 
 int /*<<< orphan*/  ACPI_SYS_MODE_LEGACY ; 
 TYPE_1__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  hw_get_mode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

u32 FUNC4(void)
{
	acpi_status status;
	u32 value;

	FUNC1(hw_get_mode);

	/*
	 * ACPI 2.0 clarified that if SMI_CMD in FADT is zero,
	 * system does not support mode transition.
	 */
	if (!acpi_gbl_FADT.smi_command) {
		FUNC3(ACPI_SYS_MODE_ACPI);
	}

	status = FUNC2(ACPI_BITREG_SCI_ENABLE, &value);
	if (FUNC0(status)) {
		FUNC3(ACPI_SYS_MODE_LEGACY);
	}

	if (value) {
		FUNC3(ACPI_SYS_MODE_ACPI);
	} else {
		FUNC3(ACPI_SYS_MODE_LEGACY);
	}
}