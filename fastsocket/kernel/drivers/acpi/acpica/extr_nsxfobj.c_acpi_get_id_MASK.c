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
struct acpi_namespace_node {int /*<<< orphan*/  owner_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_owner_id ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 struct acpi_namespace_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(acpi_handle handle, acpi_owner_id * ret_id)
{
	struct acpi_namespace_node *node;
	acpi_status status;

	/* Parameter Validation */

	if (!ret_id) {
		return (AE_BAD_PARAMETER);
	}

	status = FUNC2(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		return (status);
	}

	/* Convert and validate the handle */

	node = FUNC1(handle);
	if (!node) {
		(void)FUNC3(ACPI_MTX_NAMESPACE);
		return (AE_BAD_PARAMETER);
	}

	*ret_id = node->owner_id;

	status = FUNC3(ACPI_MTX_NAMESPACE);
	return (status);
}