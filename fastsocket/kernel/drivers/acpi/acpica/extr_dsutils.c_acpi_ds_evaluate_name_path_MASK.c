#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; TYPE_2__* parent; } ;
union acpi_parse_object {TYPE_4__ common; } ;
struct TYPE_7__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_3__ common; } ;
typedef  scalar_t__ u8 ;
struct acpi_walk_state {union acpi_operand_object* result_obj; union acpi_operand_object** operands; union acpi_parse_object* op; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_5__ {scalar_t__ aml_opcode; } ;
struct TYPE_6__ {TYPE_1__ common; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int ACPI_PARSEOP_IN_STACK ; 
 int ACPI_PARSEOP_TARGET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ AML_PACKAGE_OP ; 
 scalar_t__ AML_REF_OF_OP ; 
 scalar_t__ AML_VAR_PACKAGE_OP ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_walk_state*,union acpi_parse_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_evaluate_name_path ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status FUNC10(struct acpi_walk_state *walk_state)
{
	acpi_status status = AE_OK;
	union acpi_parse_object *op = walk_state->op;
	union acpi_operand_object **operand = &walk_state->operands[0];
	union acpi_operand_object *new_obj_desc;
	u8 type;

	FUNC1(ds_evaluate_name_path, walk_state);

	if (!op->common.parent) {

		/* This happens after certain exception processing */

		goto exit;
	}

	if ((op->common.parent->common.aml_opcode == AML_PACKAGE_OP) ||
	    (op->common.parent->common.aml_opcode == AML_VAR_PACKAGE_OP) ||
	    (op->common.parent->common.aml_opcode == AML_REF_OF_OP)) {

		/* TBD: Should we specify this feature as a bit of op_info->Flags of these opcodes? */

		goto exit;
	}

	status = FUNC3(walk_state, op, 0);
	if (FUNC0(status)) {
		goto exit;
	}

	if (op->common.flags & ACPI_PARSEOP_TARGET) {
		new_obj_desc = *operand;
		goto push_result;
	}

	type = (*operand)->common.type;

	status = FUNC6(operand, walk_state);
	if (FUNC0(status)) {
		goto exit;
	}

	if (type == ACPI_TYPE_INTEGER) {

		/* It was incremented by acpi_ex_resolve_to_value */

		FUNC8(*operand);

		status =
		    FUNC7(*operand, &new_obj_desc,
						    walk_state);
		if (FUNC0(status)) {
			goto exit;
		}
	} else {
		/*
		 * The object either was anew created or is
		 * a Namespace node - don't decrement it.
		 */
		new_obj_desc = *operand;
	}

	/* Cleanup for name-path operand */

	status = FUNC4(1, walk_state);
	if (FUNC0(status)) {
		walk_state->result_obj = new_obj_desc;
		goto exit;
	}

      push_result:

	walk_state->result_obj = new_obj_desc;

	status = FUNC5(walk_state->result_obj, walk_state);
	if (FUNC2(status)) {

		/* Force to take it from stack */

		op->common.flags |= ACPI_PARSEOP_IN_STACK;
	}

      exit:

	FUNC9(status);
}