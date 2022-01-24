#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; union acpi_operand_object** operands; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
#define  AML_DIVIDE_OP 128 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 union acpi_operand_object* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_opcode_2A_2T_1R ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

acpi_status FUNC9(struct acpi_walk_state *walk_state)
{
	union acpi_operand_object **operand = &walk_state->operands[0];
	union acpi_operand_object *return_desc1 = NULL;
	union acpi_operand_object *return_desc2 = NULL;
	acpi_status status;

	FUNC2(ex_opcode_2A_2T_1R,
				FUNC4(walk_state->opcode));

	/* Execute the opcode */

	switch (walk_state->opcode) {
	case AML_DIVIDE_OP:

		/* Divide (Dividend, Divisor, remainder_result quotient_result) */

		return_desc1 =
		    FUNC5(ACPI_TYPE_INTEGER);
		if (!return_desc1) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		return_desc2 =
		    FUNC5(ACPI_TYPE_INTEGER);
		if (!return_desc2) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		/* Quotient to return_desc1, remainder to return_desc2 */

		status = FUNC6(operand[0]->integer.value,
					operand[1]->integer.value,
					&return_desc1->integer.value,
					&return_desc2->integer.value);
		if (FUNC1(status)) {
			goto cleanup;
		}
		break;

	default:

		FUNC0((AE_INFO, "Unknown AML opcode %X",
			    walk_state->opcode));
		status = AE_AML_BAD_OPCODE;
		goto cleanup;
	}

	/* Store the results to the target reference operands */

	status = FUNC3(return_desc2, operand[2], walk_state);
	if (FUNC1(status)) {
		goto cleanup;
	}

	status = FUNC3(return_desc1, operand[3], walk_state);
	if (FUNC1(status)) {
		goto cleanup;
	}

      cleanup:
	/*
	 * Since the remainder is not returned indirectly, remove a reference to
	 * it. Only the quotient is returned indirectly.
	 */
	FUNC7(return_desc2);

	if (FUNC1(status)) {

		/* Delete the return object */

		FUNC7(return_desc1);
	}

	/* Save return object (the remainder) on success */

	else {
		walk_state->result_obj = return_desc1;
	}

	FUNC8(status);
}