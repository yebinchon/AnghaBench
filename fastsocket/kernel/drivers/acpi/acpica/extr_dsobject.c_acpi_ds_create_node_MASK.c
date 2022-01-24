#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  arg; } ;
struct TYPE_5__ {TYPE_3__ value; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union acpi_parse_object*) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_walk_state*,int /*<<< orphan*/ ,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_create_node ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC7(struct acpi_walk_state *walk_state,
		    struct acpi_namespace_node *node,
		    union acpi_parse_object *op)
{
	acpi_status status;
	union acpi_operand_object *obj_desc;

	FUNC1(ds_create_node, op);

	/*
	 * Because of the execution pass through the non-control-method
	 * parts of the table, we can arrive here twice.  Only init
	 * the named object node the first time through
	 */
	if (FUNC4(node)) {
		FUNC6(AE_OK);
	}

	if (!op->common.value.arg) {

		/* No arguments, there is nothing to do */

		FUNC6(AE_OK);
	}

	/* Build an internal object for the argument(s) */

	status = FUNC2(walk_state, op->common.value.arg,
					       &obj_desc);
	if (FUNC0(status)) {
		FUNC6(status);
	}

	/* Re-type the object according to its argument */

	node->type = obj_desc->common.type;

	/* Attach obj to node */

	status = FUNC3(node, obj_desc, node->type);

	/* Remove local reference to the object */

	FUNC5(obj_desc);
	FUNC6(status);
}