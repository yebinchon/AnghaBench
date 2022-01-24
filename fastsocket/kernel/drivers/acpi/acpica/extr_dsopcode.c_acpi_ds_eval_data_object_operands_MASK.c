#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  arg; } ;
struct TYPE_10__ {int aml_opcode; TYPE_4__* parent; TYPE_1__ value; } ;
union acpi_parse_object {TYPE_5__ common; } ;
struct TYPE_7__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_2__ integer; } ;
typedef  scalar_t__ u32 ;
struct acpi_walk_state {int operand_index; int num_operands; union acpi_operand_object* result_obj; union acpi_operand_object** operands; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_8__ {int const aml_opcode; } ;
struct TYPE_9__ {TYPE_3__ common; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
#define  AML_BUFFER_OP 130 
 scalar_t__ AML_NAME_OP ; 
#define  AML_PACKAGE_OP 129 
#define  AML_VAR_PACKAGE_OP 128 
 int /*<<< orphan*/  FUNC3 (struct acpi_walk_state*,union acpi_parse_object*,scalar_t__,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_walk_state*,union acpi_parse_object*,scalar_t__,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_walk_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_eval_data_object_operands ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC10(struct acpi_walk_state *walk_state,
				  union acpi_parse_object *op,
				  union acpi_operand_object *obj_desc)
{
	acpi_status status;
	union acpi_operand_object *arg_desc;
	u32 length;

	FUNC1(ds_eval_data_object_operands);

	/* The first operand (for all of these data objects) is the length */

	/*
	 * Set proper index into operand stack for acpi_ds_obj_stack_push
	 * invoked inside acpi_ds_create_operand.
	 */
	walk_state->operand_index = walk_state->num_operands;

	status = FUNC5(walk_state, op->common.value.arg, 1);
	if (FUNC0(status)) {
		FUNC9(status);
	}

	status = FUNC7(walk_state->opcode,
					  &(walk_state->
					    operands[walk_state->num_operands -
						     1]), walk_state);
	if (FUNC0(status)) {
		FUNC9(status);
	}

	/* Extract length operand */

	arg_desc = walk_state->operands[walk_state->num_operands - 1];
	length = (u32) arg_desc->integer.value;

	/* Cleanup for length operand */

	status = FUNC6(1, walk_state);
	if (FUNC0(status)) {
		FUNC9(status);
	}

	FUNC8(arg_desc);

	/*
	 * Create the actual data object
	 */
	switch (op->common.aml_opcode) {
	case AML_BUFFER_OP:

		status =
		    FUNC3(walk_state, op, length,
						      &obj_desc);
		break;

	case AML_PACKAGE_OP:
	case AML_VAR_PACKAGE_OP:

		status =
		    FUNC4(walk_state, op, length,
						       &obj_desc);
		break;

	default:
		FUNC9(AE_AML_BAD_OPCODE);
	}

	if (FUNC2(status)) {
		/*
		 * Return the object in the walk_state, unless the parent is a package -
		 * in this case, the return object will be stored in the parse tree
		 * for the package.
		 */
		if ((!op->common.parent) ||
		    ((op->common.parent->common.aml_opcode != AML_PACKAGE_OP) &&
		     (op->common.parent->common.aml_opcode !=
		      AML_VAR_PACKAGE_OP)
		     && (op->common.parent->common.aml_opcode != AML_NAME_OP))) {
			walk_state->result_obj = obj_desc;
		}
	}

	FUNC9(status);
}