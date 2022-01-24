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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 size_t ACPI_NUM_DEFAULT_SPACES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * acpi_gbl_default_address_spaces ; 
 int /*<<< orphan*/  acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_initialize_op_regions ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status FUNC6(void)
{
	acpi_status status;
	u32 i;

	FUNC1(ev_initialize_op_regions);

	status = FUNC3(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		FUNC5(status);
	}

	/* Run the _REG methods for op_regions in each default address space */

	for (i = 0; i < ACPI_NUM_DEFAULT_SPACES; i++) {
		/*
		 * TBD: Make sure handler is the DEFAULT handler, otherwise
		 * _REG will have already been run.
		 */
		status = FUNC2(acpi_gbl_root_node,
						     acpi_gbl_default_address_spaces
						     [i]);
	}

	(void)FUNC4(ACPI_MTX_NAMESPACE);
	FUNC5(status);
}