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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_buffer {scalar_t__ pointer; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_size ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct acpi_namespace_node*) ; 
 struct acpi_namespace_node* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  ns_handle_to_pathname ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC8(acpi_handle target_handle,
			   struct acpi_buffer * buffer)
{
	acpi_status status;
	struct acpi_namespace_node *node;
	acpi_size required_size;

	FUNC2(ns_handle_to_pathname, target_handle);

	node = FUNC5(target_handle);
	if (!node) {
		FUNC7(AE_BAD_PARAMETER);
	}

	/* Determine size required for the caller buffer */

	required_size = FUNC4(node);
	if (!required_size) {
		FUNC7(AE_BAD_PARAMETER);
	}

	/* Validate/Allocate/Clear caller buffer */

	status = FUNC6(buffer, required_size);
	if (FUNC1(status)) {
		FUNC7(status);
	}

	/* Build the path in the caller buffer */

	status =
	    FUNC3(node, required_size, buffer->pointer);
	if (FUNC1(status)) {
		FUNC7(status);
	}

	FUNC0((ACPI_DB_EXEC, "%s [%X]\n",
			  (char *)buffer->pointer, (u32) required_size));
	FUNC7(AE_OK);
}