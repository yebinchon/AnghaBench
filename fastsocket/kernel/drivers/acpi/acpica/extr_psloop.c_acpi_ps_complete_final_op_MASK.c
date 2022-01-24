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
struct TYPE_2__ {int /*<<< orphan*/  aml_opcode; } ;
union acpi_parse_object {TYPE_1__ common; } ;
struct acpi_walk_state {scalar_t__ (* ascending_callback ) (struct acpi_walk_state*) ;int /*<<< orphan*/  arg_count; int /*<<< orphan*/  arg_types; int /*<<< orphan*/  parser_state; int /*<<< orphan*/  opcode; int /*<<< orphan*/  op_info; union acpi_parse_object* op; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 scalar_t__ AE_CTRL_PENDING ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 scalar_t__ AE_OK ; 
 scalar_t__ FUNC3 (struct acpi_walk_state*,union acpi_parse_object**,scalar_t__) ; 
 scalar_t__ FUNC4 (struct acpi_walk_state*,union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct acpi_walk_state*,union acpi_parse_object*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,union acpi_parse_object**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ps_complete_final_op ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct acpi_walk_state*) ; 

__attribute__((used)) static acpi_status
FUNC10(struct acpi_walk_state *walk_state,
			  union acpi_parse_object *op, acpi_status status)
{
	acpi_status status2;

	FUNC2(ps_complete_final_op, walk_state);

	/*
	 * Complete the last Op (if not completed), and clear the scope stack.
	 * It is easily possible to end an AML "package" with an unbounded number
	 * of open scopes (such as when several ASL blocks are closed with
	 * sequential closing braces). We want to terminate each one cleanly.
	 */
	FUNC0((ACPI_DB_PARSE, "AML package complete at Op %p\n",
			  op));
	do {
		if (op) {
			if (walk_state->ascending_callback != NULL) {
				walk_state->op = op;
				walk_state->op_info =
				    FUNC5(op->common.
							    aml_opcode);
				walk_state->opcode = op->common.aml_opcode;

				status =
				    walk_state->ascending_callback(walk_state);
				status =
				    FUNC6(walk_state, op,
							     status);
				if (status == AE_CTRL_PENDING) {
					status =
					    FUNC3(walk_state, &op,
								AE_OK);
					if (FUNC1(status)) {
						FUNC8(status);
					}
				}

				if (status == AE_CTRL_TERMINATE) {
					status = AE_OK;

					/* Clean up */
					do {
						if (op) {
							status2 =
							    FUNC4
							    (walk_state, op);
							if (FUNC1
							    (status2)) {
								FUNC8
								    (status2);
							}
						}

						FUNC7(&
								  (walk_state->
								   parser_state),
								  &op,
								  &walk_state->
								  arg_types,
								  &walk_state->
								  arg_count);

					} while (op);

					FUNC8(status);
				}

				else if (FUNC1(status)) {

					/* First error is most important */

					(void)
					    FUNC4(walk_state,
								     op);
					FUNC8(status);
				}
			}

			status2 = FUNC4(walk_state, op);
			if (FUNC1(status2)) {
				FUNC8(status2);
			}
		}

		FUNC7(&(walk_state->parser_state), &op,
				  &walk_state->arg_types,
				  &walk_state->arg_count);

	} while (op);

	FUNC8(status);
}