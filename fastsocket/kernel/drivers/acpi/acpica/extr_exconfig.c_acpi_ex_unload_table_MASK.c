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
struct TYPE_4__ {scalar_t__ type; int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ reference; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_table_header {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (union acpi_operand_object*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TABLE_EVENT_UNLOAD ; 
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct acpi_table_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_table_handler_context ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_unload_table ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status FUNC11(union acpi_operand_object *ddb_handle)
{
	acpi_status status = AE_OK;
	union acpi_operand_object *table_desc = ddb_handle;
	u32 table_index;
	struct acpi_table_header *table;

	FUNC1(ex_unload_table);

	/*
	 * Validate the handle
	 * Although the handle is partially validated in acpi_ex_reconfiguration()
	 * when it calls acpi_ex_resolve_operands(), the handle is more completely
	 * validated here.
	 *
	 * Handle must be a valid operand object of type reference. Also, the
	 * ddb_handle must still be marked valid (table has not been previously
	 * unloaded)
	 */
	if ((!ddb_handle) ||
	    (FUNC2(ddb_handle) != ACPI_DESC_TYPE_OPERAND) ||
	    (ddb_handle->common.type != ACPI_TYPE_LOCAL_REFERENCE) ||
	    (!(ddb_handle->common.flags & AOPOBJ_DATA_VALID))) {
		FUNC10(AE_BAD_PARAMETER);
	}

	/* Get the table index from the ddb_handle */

	table_index = table_desc->reference.value;

	/* Ensure the table is still loaded */

	if (!FUNC7(table_index)) {
		FUNC10(AE_NOT_EXIST);
	}

	/* Invoke table handler if present */

	if (&acpi_gbl_table_handler) {
		status = FUNC5(table_index, &table);
		if (FUNC3(status)) {
			(void)FUNC4(ACPI_TABLE_EVENT_UNLOAD,
						     table,
						     acpi_gbl_table_handler_context);
		}
	}

	/* Delete the portion of the namespace owned by this table */

	status = FUNC6(table_index);
	if (FUNC0(status)) {
		FUNC10(status);
	}

	(void)FUNC8(table_index);
	FUNC9(table_index, FALSE);

	/*
	 * Invalidate the handle. We do this because the handle may be stored
	 * in a named object and may not be actually deleted until much later.
	 */
	ddb_handle->common.flags &= ~AOPOBJ_DATA_VALID;
	FUNC10(AE_OK);
}