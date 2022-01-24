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
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;
typedef  int /*<<< orphan*/  acpi_adr_space_type ;
typedef  int /*<<< orphan*/  acpi_adr_space_setup ;
typedef  int /*<<< orphan*/  acpi_adr_space_handler ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*)) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct acpi_namespace_node* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC8(acpi_handle device,
				   acpi_adr_space_type space_id,
				   acpi_adr_space_handler handler,
				   acpi_adr_space_setup setup, void *context)
{
	struct acpi_namespace_node *node;
	acpi_status status;

	FUNC1(acpi_install_address_space_handler);

	/* Parameter validation */

	if (!device) {
		FUNC7(AE_BAD_PARAMETER);
	}

	status = FUNC5(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		FUNC7(status);
	}

	/* Convert and validate the device handle */

	node = FUNC4(device);
	if (!node) {
		status = AE_BAD_PARAMETER;
		goto unlock_and_exit;
	}

	/* Install the handler for all Regions for this Space ID */

	status =
	    FUNC3(node, space_id, handler, setup,
					  context);
	if (FUNC0(status)) {
		goto unlock_and_exit;
	}

	/* Run all _REG methods for this address space */

	status = FUNC2(node, space_id);

      unlock_and_exit:
	(void)FUNC6(ACPI_MTX_NAMESPACE);
	FUNC7(status);
}