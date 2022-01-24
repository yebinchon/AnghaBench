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
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_TIMER_OP 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 union acpi_operand_object* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_opcode_0A_0T_1R ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status FUNC8(struct acpi_walk_state *walk_state)
{
	acpi_status status = AE_OK;
	union acpi_operand_object *return_desc = NULL;

	FUNC2(ex_opcode_0A_0T_1R,
				FUNC4(walk_state->opcode));

	/* Examine the AML opcode */

	switch (walk_state->opcode) {
	case AML_TIMER_OP:	/*  Timer () */

		/* Create a return object of type Integer */

		return_desc = FUNC5(ACPI_TYPE_INTEGER);
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}
		return_desc->integer.value = FUNC3();
		break;

	default:		/*  Unknown opcode  */

		FUNC0((AE_INFO, "Unknown AML opcode %X",
			    walk_state->opcode));
		status = AE_AML_BAD_OPCODE;
		break;
	}

      cleanup:

	/* Delete return object on error */

	if ((FUNC1(status)) || walk_state->result_obj) {
		FUNC6(return_desc);
		walk_state->result_obj = NULL;
	} else {
		/* Save the return value */

		walk_state->result_obj = return_desc;
	}

	FUNC7(status);
}