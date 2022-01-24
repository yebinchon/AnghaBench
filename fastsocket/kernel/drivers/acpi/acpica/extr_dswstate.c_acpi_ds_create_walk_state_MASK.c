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
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_2__ {union acpi_parse_object* start_op; } ;
struct acpi_walk_state {TYPE_1__ parser_state; struct acpi_thread_state* thread; union acpi_parse_object* origin; int /*<<< orphan*/  owner_id; union acpi_operand_object* method_desc; int /*<<< orphan*/  descriptor_type; } ;
struct acpi_thread_state {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_owner_id ;

/* Variables and functions */
 struct acpi_walk_state* FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_DESC_TYPE_WALK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_walk_state*,struct acpi_thread_state*) ; 
 int /*<<< orphan*/  ds_create_walk_state ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_walk_state*) ; 

struct acpi_walk_state *FUNC5(acpi_owner_id owner_id, union acpi_parse_object
						  *origin, union acpi_operand_object
						  *method_desc, struct acpi_thread_state
						  *thread)
{
	struct acpi_walk_state *walk_state;

	FUNC1(ds_create_walk_state);

	walk_state = FUNC0(sizeof(struct acpi_walk_state));
	if (!walk_state) {
		FUNC4(NULL);
	}

	walk_state->descriptor_type = ACPI_DESC_TYPE_WALK;
	walk_state->method_desc = method_desc;
	walk_state->owner_id = owner_id;
	walk_state->origin = origin;
	walk_state->thread = thread;

	walk_state->parser_state.start_op = origin;

	/* Init the method args/local */

#if (!defined (ACPI_NO_METHOD_EXECUTION) && !defined (ACPI_CONSTANT_EVAL_ONLY))
	FUNC2(walk_state);
#endif

	/* Put the new state at the head of the walk list */

	if (thread) {
		FUNC3(walk_state, thread);
	}

	FUNC4(walk_state);
}