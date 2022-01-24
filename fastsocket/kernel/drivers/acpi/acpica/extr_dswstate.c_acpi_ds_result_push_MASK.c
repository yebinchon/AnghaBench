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
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_2__ {union acpi_operand_object** obj_desc; } ;
union acpi_generic_state {TYPE_1__ results; } ;
typedef  size_t u32 ;
struct acpi_walk_state {scalar_t__ result_count; scalar_t__ result_size; int /*<<< orphan*/  current_result; union acpi_generic_state* results; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t ACPI_RESULTS_FRAME_OBJ_NUM ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_result_push ; 

acpi_status
FUNC6(union acpi_operand_object * object,
		    struct acpi_walk_state * walk_state)
{
	union acpi_generic_state *state;
	acpi_status status;
	u32 index;

	FUNC3(ds_result_push);

	if (walk_state->result_count > walk_state->result_size) {
		FUNC1((AE_INFO, "Result stack is full"));
		return (AE_AML_INTERNAL);
	} else if (walk_state->result_count == walk_state->result_size) {

		/* Extend the result stack */

		status = FUNC4(walk_state);
		if (FUNC2(status)) {
			FUNC1((AE_INFO,
				    "Failed to extend the result stack"));
			return (status);
		}
	}

	if (!(walk_state->result_count < walk_state->result_size)) {
		FUNC1((AE_INFO, "No free elements in result stack"));
		return (AE_AML_INTERNAL);
	}

	state = walk_state->results;
	if (!state) {
		FUNC1((AE_INFO, "No result stack frame during push"));
		return (AE_AML_INTERNAL);
	}

	if (!object) {
		FUNC1((AE_INFO,
			    "Null Object! Obj=%p State=%p Num=%X",
			    object, walk_state, walk_state->result_count));
		return (AE_BAD_PARAMETER);
	}

	/* Assign the address of object to the top free element of result stack */

	index = (u32)walk_state->result_count % ACPI_RESULTS_FRAME_OBJ_NUM;
	state->results.obj_desc[index] = object;
	walk_state->result_count++;

	FUNC0((ACPI_DB_EXEC, "Obj=%p [%s] State=%p Num=%X Cur=%X\n",
			  object,
			  FUNC5((union
							acpi_operand_object *)
						       object), walk_state,
			  walk_state->result_count,
			  walk_state->current_result));

	return (AE_OK);
}