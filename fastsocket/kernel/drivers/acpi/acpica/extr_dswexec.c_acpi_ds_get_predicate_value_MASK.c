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
struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ common; } ;
struct acpi_walk_state {TYPE_4__* control_state; int /*<<< orphan*/  op; union acpi_operand_object** operands; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  value; } ;
struct TYPE_8__ {TYPE_3__ common; } ;

/* Variables and functions */
 scalar_t__ ACPI_CONTROL_NORMAL ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_CTRL_FALSE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_walk_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*,struct acpi_walk_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*,union acpi_operand_object**,int) ; 
 int /*<<< orphan*/  FUNC11 (union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC12 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC13 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_get_predicate_value ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC15(struct acpi_walk_state *walk_state,
			    union acpi_operand_object *result_obj)
{
	acpi_status status = AE_OK;
	union acpi_operand_object *obj_desc;
	union acpi_operand_object *local_obj_desc = NULL;

	FUNC5(ds_get_predicate_value, walk_state);

	walk_state->control_state->common.state = 0;

	if (result_obj) {
		status = FUNC9(&obj_desc, walk_state);
		if (FUNC4(status)) {
			FUNC3((AE_INFO, status,
					"Could not get result from predicate evaluation"));

			FUNC14(status);
		}
	} else {
		status = FUNC7(walk_state, walk_state->op, 0);
		if (FUNC4(status)) {
			FUNC14(status);
		}

		status =
		    FUNC11(&walk_state->operands[0],
					     walk_state);
		if (FUNC4(status)) {
			FUNC14(status);
		}

		obj_desc = walk_state->operands[0];
	}

	if (!obj_desc) {
		FUNC2((AE_INFO,
			    "No predicate ObjDesc=%p State=%p",
			    obj_desc, walk_state));

		FUNC14(AE_AML_NO_OPERAND);
	}

	/*
	 * Result of predicate evaluation must be an Integer
	 * object. Implicitly convert the argument if necessary.
	 */
	status = FUNC10(obj_desc, &local_obj_desc, 16);
	if (FUNC4(status)) {
		goto cleanup;
	}

	if (local_obj_desc->common.type != ACPI_TYPE_INTEGER) {
		FUNC2((AE_INFO,
			    "Bad predicate (not an integer) ObjDesc=%p State=%p Type=%X",
			    obj_desc, walk_state, obj_desc->common.type));

		status = AE_AML_OPERAND_TYPE;
		goto cleanup;
	}

	/* Truncate the predicate to 32-bits if necessary */

	FUNC12(local_obj_desc);

	/*
	 * Save the result of the predicate evaluation on
	 * the control stack
	 */
	if (local_obj_desc->integer.value) {
		walk_state->control_state->common.value = TRUE;
	} else {
		/*
		 * Predicate is FALSE, we will just toss the
		 * rest of the package
		 */
		walk_state->control_state->common.value = FALSE;
		status = AE_CTRL_FALSE;
	}

	/* Predicate can be used for an implicit return value */

	(void)FUNC8(local_obj_desc, walk_state, TRUE);

      cleanup:

	FUNC1((ACPI_DB_EXEC, "Completed a predicate eval=%X Op=%p\n",
			  walk_state->control_state->common.value,
			  walk_state->op));

	/* Break to debugger to display result */

	FUNC0(FUNC6
			   (local_obj_desc, walk_state));

	/*
	 * Delete the predicate result object (we know that
	 * we don't need it anymore)
	 */
	if (local_obj_desc != obj_desc) {
		FUNC13(local_obj_desc);
	}
	FUNC13(obj_desc);

	walk_state->control_state->common.state = ACPI_CONTROL_NORMAL;
	FUNC14(status);
}