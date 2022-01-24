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
struct TYPE_2__ {union acpi_generic_state* next; } ;
union acpi_generic_state {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union acpi_generic_state*) ; 
 int /*<<< orphan*/  ut_pop_generic_state ; 

union acpi_generic_state *FUNC2(union acpi_generic_state
						    **list_head)
{
	union acpi_generic_state *state;

	FUNC0(ut_pop_generic_state);

	/* Remove the state object at the head of the list (stack) */

	state = *list_head;
	if (state) {

		/* Update the list head */

		*list_head = state->common.next;
	}

	FUNC1(state);
}