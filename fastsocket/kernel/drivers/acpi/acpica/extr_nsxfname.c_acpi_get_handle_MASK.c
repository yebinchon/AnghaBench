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
typedef  int /*<<< orphan*/ * acpi_string ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ACPI_NS_NO_UPSEARCH ; 
 int /*<<< orphan*/  ACPI_NS_ROOT_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 struct acpi_namespace_node* acpi_gbl_root_node ; 
 scalar_t__ FUNC3 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_namespace_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct acpi_namespace_node**) ; 
 struct acpi_namespace_node* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC7(acpi_handle parent,
		acpi_string pathname, acpi_handle * ret_handle)
{
	acpi_status status;
	struct acpi_namespace_node *node = NULL;
	struct acpi_namespace_node *prefix_node = NULL;

	FUNC0();

	/* Parameter Validation */

	if (!ret_handle || !pathname) {
		return (AE_BAD_PARAMETER);
	}

	/* Convert a parent handle to a prefix node */

	if (parent) {
		prefix_node = FUNC5(parent);
		if (!prefix_node) {
			return (AE_BAD_PARAMETER);
		}
	}

	/*
	 * Valid cases are:
	 * 1) Fully qualified pathname
	 * 2) Parent + Relative pathname
	 *
	 * Error for <null Parent + relative path>
	 */
	if (FUNC6(pathname[0])) {

		/* Pathname is fully qualified (starts with '\') */

		/* Special case for root-only, since we can't search for it */

		if (!FUNC1(pathname, ACPI_NS_ROOT_PATH)) {
			*ret_handle =
			    FUNC3(acpi_gbl_root_node);
			return (AE_OK);
		}
	} else if (!prefix_node) {

		/* Relative path with null prefix is disallowed */

		return (AE_BAD_PARAMETER);
	}

	/* Find the Node and convert to a handle */

	status =
	    FUNC4(prefix_node, pathname, ACPI_NS_NO_UPSEARCH, &node);
	if (FUNC2(status)) {
		*ret_handle = FUNC3(node);
	}

	return (status);
}