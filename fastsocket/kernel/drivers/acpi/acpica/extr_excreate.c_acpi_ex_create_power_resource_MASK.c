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
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ resource_order; scalar_t__ system_level; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ power_resource; } ;
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct acpi_walk_state {union acpi_operand_object** operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  ACPI_TYPE_POWER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_namespace_node*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_create_power_resource ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

acpi_status FUNC5(struct acpi_walk_state *walk_state)
{
	union acpi_operand_object **operand = &walk_state->operands[0];
	acpi_status status;
	union acpi_operand_object *obj_desc;

	FUNC0(ex_create_power_resource, walk_state);

	/* Create the power resource object */

	obj_desc = FUNC2(ACPI_TYPE_POWER);
	if (!obj_desc) {
		FUNC4(AE_NO_MEMORY);
	}

	/* Initialize the power object from the operands */

	obj_desc->power_resource.system_level = (u8) operand[1]->integer.value;
	obj_desc->power_resource.resource_order =
	    (u16) operand[2]->integer.value;

	/* Install the  power resource object in the parent Node */

	status = FUNC1((struct acpi_namespace_node *)operand[0],
				       obj_desc, ACPI_TYPE_POWER);

	/* Remove local reference to the object */

	FUNC3(obj_desc);
	FUNC4(status);
}