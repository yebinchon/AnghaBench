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
typedef  void* u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object** operands; } ;
struct acpi_signal_fatal_info {void* argument; void* code; void* type; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 struct acpi_signal_fatal_info* FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_signal_fatal_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIGNAL_FATAL ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_FATAL_OP 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_signal_fatal_info*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  ex_opcode_3A_0T_0R ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status FUNC8(struct acpi_walk_state *walk_state)
{
	union acpi_operand_object **operand = &walk_state->operands[0];
	struct acpi_signal_fatal_info *fatal;
	acpi_status status = AE_OK;

	FUNC4(ex_opcode_3A_0T_0R,
				FUNC6(walk_state->opcode));

	switch (walk_state->opcode) {
	case AML_FATAL_OP:	/* Fatal (fatal_type fatal_code fatal_arg) */

		FUNC1((ACPI_DB_INFO,
				  "FatalOp: Type %X Code %X Arg %X <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n",
				  (u32) operand[0]->integer.value,
				  (u32) operand[1]->integer.value,
				  (u32) operand[2]->integer.value));

		fatal = FUNC0(sizeof(struct acpi_signal_fatal_info));
		if (fatal) {
			fatal->type = (u32) operand[0]->integer.value;
			fatal->code = (u32) operand[1]->integer.value;
			fatal->argument = (u32) operand[2]->integer.value;
		}

		/* Always signal the OS! */

		status = FUNC5(ACPI_SIGNAL_FATAL, fatal);

		/* Might return while OS is shutting down, just continue */

		FUNC3(fatal);
		break;

	default:

		FUNC2((AE_INFO, "Unknown AML opcode %X",
			    walk_state->opcode));
		status = AE_AML_BAD_OPCODE;
		goto cleanup;
	}

      cleanup:

	FUNC7(status);
}