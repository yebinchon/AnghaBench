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
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_terminate ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC5(void)
{
	union acpi_operand_object *obj_desc;

	FUNC1(ns_terminate);

	/*
	 * 1) Free the entire namespace -- all nodes and objects
	 *
	 * Delete all object descriptors attached to namepsace nodes
	 */
	FUNC2(acpi_gbl_root_node);

	/* Detach any objects attached to the root */

	obj_desc = FUNC4(acpi_gbl_root_node);
	if (obj_desc) {
		FUNC3(acpi_gbl_root_node);
	}

	FUNC0((ACPI_DB_INFO, "Namespace freed\n"));
	return_VOID;
}