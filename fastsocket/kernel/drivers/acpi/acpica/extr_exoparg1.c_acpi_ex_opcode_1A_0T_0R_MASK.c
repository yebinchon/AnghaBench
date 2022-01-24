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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object** operands; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_RELEASE_OP 133 
#define  AML_RESET_OP 132 
#define  AML_SIGNAL_OP 131 
#define  AML_SLEEP_OP 130 
#define  AML_STALL_OP 129 
#define  AML_UNLOAD_OP 128 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  ex_opcode_1A_0T_0R ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status FUNC10(struct acpi_walk_state *walk_state)
{
	union acpi_operand_object **operand = &walk_state->operands[0];
	acpi_status status = AE_OK;

	FUNC1(ex_opcode_1A_0T_0R,
				FUNC8(walk_state->opcode));

	/* Examine the AML opcode */

	switch (walk_state->opcode) {
	case AML_RELEASE_OP:	/*  Release (mutex_object) */

		status = FUNC2(operand[0], walk_state);
		break;

	case AML_RESET_OP:	/*  Reset (event_object) */

		status = FUNC5(operand[0]);
		break;

	case AML_SIGNAL_OP:	/*  Signal (event_object) */

		status = FUNC6(operand[0]);
		break;

	case AML_SLEEP_OP:	/*  Sleep (msec_time) */

		status = FUNC4(operand[0]->integer.value);
		break;

	case AML_STALL_OP:	/*  Stall (usec_time) */

		status =
		    FUNC3((u32) operand[0]->integer.value);
		break;

	case AML_UNLOAD_OP:	/*  Unload (Handle) */

		status = FUNC7(operand[0]);
		break;

	default:		/*  Unknown opcode  */

		FUNC0((AE_INFO, "Unknown AML opcode %X",
			    walk_state->opcode));
		status = AE_AML_BAD_OPCODE;
		break;
	}

	FUNC9(status);
}