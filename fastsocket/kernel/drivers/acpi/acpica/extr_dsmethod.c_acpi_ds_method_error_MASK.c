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
struct acpi_walk_state {int /*<<< orphan*/  op; int /*<<< orphan*/  aml_offset; int /*<<< orphan*/  opcode; TYPE_2__* method_node; } ;
typedef  int acpi_status ;
struct TYPE_3__ {int /*<<< orphan*/  integer; } ;
struct TYPE_4__ {TYPE_1__ name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int AE_CODE_CONTROL ; 
 int /*<<< orphan*/  FUNC3 (int,struct acpi_walk_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

acpi_status
FUNC8(acpi_status status, struct acpi_walk_state *walk_state)
{
	FUNC1();

	/* Ignore AE_OK and control exception codes */

	if (FUNC2(status) || (status & AE_CODE_CONTROL)) {
		return (status);
	}

	/* Invoke the global exception handler */

	if (&acpi_gbl_exception_handler) {

		/* Exit the interpreter, allow handler to execute methods */

		FUNC6();

		/*
		 * Handler can map the exception code to anything it wants, including
		 * AE_OK, in which case the executing method will not be aborted.
		 */
		status = FUNC7(status,
						    walk_state->method_node ?
						    walk_state->method_node->
						    name.integer : 0,
						    walk_state->opcode,
						    walk_state->aml_offset,
						    NULL);
		FUNC5();
	}

	FUNC4(walk_state);

#ifdef ACPI_DISASSEMBLER
	if (ACPI_FAILURE(status)) {

		/* Display method locals/args if disassembler is present */

		acpi_dm_dump_method_info(status, walk_state, walk_state->op);
	}
#endif

	return (status);
}