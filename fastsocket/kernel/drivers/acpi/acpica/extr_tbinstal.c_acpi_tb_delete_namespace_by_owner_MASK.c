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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_owner_id ;
struct TYPE_4__ {size_t count; TYPE_1__* tables; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_INTERPRETER ; 
 int /*<<< orphan*/  ACPI_MTX_TABLES ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  acpi_gbl_namespace_rw_lock ; 
 TYPE_2__ acpi_gbl_root_table_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_delete_namespace_by_owner ; 

acpi_status FUNC8(u32 table_index)
{
	acpi_owner_id owner_id;
	acpi_status status;

	FUNC1(tb_delete_namespace_by_owner);

	status = FUNC3(ACPI_MTX_TABLES);
	if (FUNC0(status)) {
		FUNC7(status);
	}

	if (table_index >= acpi_gbl_root_table_list.count) {

		/* The table index does not exist */

		(void)FUNC5(ACPI_MTX_TABLES);
		FUNC7(AE_NOT_EXIST);
	}

	/* Get the owner ID for this table, used to delete namespace nodes */

	owner_id = acpi_gbl_root_table_list.tables[table_index].owner_id;
	(void)FUNC5(ACPI_MTX_TABLES);

	/*
	 * Need to acquire the namespace writer lock to prevent interference
	 * with any concurrent namespace walks. The interpreter must be
	 * released during the deletion since the acquisition of the deletion
	 * lock may block, and also since the execution of a namespace walk
	 * must be allowed to use the interpreter.
	 */
	(void)FUNC5(ACPI_MTX_INTERPRETER);
	status = FUNC4(&acpi_gbl_namespace_rw_lock);

	FUNC2(owner_id);
	if (FUNC0(status)) {
		FUNC7(status);
	}

	FUNC6(&acpi_gbl_namespace_rw_lock);

	status = FUNC3(ACPI_MTX_INTERPRETER);
	FUNC7(status);
}