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
struct acpi_walk_state {int opcode; union acpi_operand_object** operands; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_LOAD_OP 128 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ex_opcode_1A_1T_0R ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

acpi_status FUNC5(struct acpi_walk_state *walk_state)
{
	acpi_status status = AE_OK;
	union acpi_operand_object **operand = &walk_state->operands[0];

	FUNC1(ex_opcode_1A_1T_0R,
				FUNC3(walk_state->opcode));

	/* Examine the AML opcode */

	switch (walk_state->opcode) {
	case AML_LOAD_OP:

		status = FUNC2(operand[0], operand[1], walk_state);
		break;

	default:		/* Unknown opcode */

		FUNC0((AE_INFO, "Unknown AML opcode %X",
			    walk_state->opcode));
		status = AE_AML_BAD_OPCODE;
		goto cleanup;
	}

      cleanup:

	FUNC4(status);
}