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
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  class; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_REFCLASS_TABLE ; 
 int /*<<< orphan*/  ACPI_TYPE_LOCAL_REFERENCE ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 union acpi_operand_object* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_add_table ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC9(u32 table_index,
		  struct acpi_namespace_node *parent_node,
		  union acpi_operand_object **ddb_handle)
{
	acpi_status status;
	union acpi_operand_object *obj_desc;

	FUNC1(ex_add_table);

	/* Create an object to be the table handle */

	obj_desc = FUNC6(ACPI_TYPE_LOCAL_REFERENCE);
	if (!obj_desc) {
		FUNC8(AE_NO_MEMORY);
	}

	/* Init the table handle */

	obj_desc->common.flags |= AOPOBJ_DATA_VALID;
	obj_desc->reference.class = ACPI_REFCLASS_TABLE;
	*ddb_handle = obj_desc;

	/* Install the new table into the local data structures */

	obj_desc->reference.value = table_index;

	/* Add the table to the namespace */

	status = FUNC5(table_index, parent_node);
	if (FUNC0(status)) {
		FUNC7(obj_desc);
		*ddb_handle = NULL;
		FUNC8(status);
	}

	/* Execute any module-level code that was found in the table */

	FUNC3();
	FUNC4();
	FUNC2();

	FUNC8(status);
}