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
typedef  scalar_t__ u8 ;
struct acpi_walk_state {union acpi_operand_object* implicit_return_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  acpi_gbl_enable_interpreter_slack ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_do_implicit_return ; 

u8
FUNC4(union acpi_operand_object *return_desc,
			   struct acpi_walk_state *walk_state, u8 add_reference)
{
	FUNC1(ds_do_implicit_return);

	/*
	 * Slack must be enabled for this feature, and we must
	 * have a valid return object
	 */
	if ((!acpi_gbl_enable_interpreter_slack) || (!return_desc)) {
		return (FALSE);
	}

	FUNC0((ACPI_DB_DISPATCH,
			  "Result %p will be implicitly returned; Prev=%p\n",
			  return_desc, walk_state->implicit_return_obj));

	/*
	 * Delete any "stale" implicit return value first. However, in
	 * complex statements, the implicit return value can be
	 * bubbled up several levels, so we don't clear the value if it
	 * is the same as the return_desc.
	 */
	if (walk_state->implicit_return_obj) {
		if (walk_state->implicit_return_obj == return_desc) {
			return (TRUE);
		}
		FUNC2(walk_state);
	}

	/* Save the implicit return value, add a reference if requested */

	walk_state->implicit_return_obj = return_desc;
	if (add_reference) {
		FUNC3(return_desc);
	}

	return (TRUE);
}