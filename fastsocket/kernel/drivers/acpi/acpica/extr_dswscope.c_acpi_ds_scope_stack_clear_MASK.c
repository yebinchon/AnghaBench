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
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_3__ {union acpi_generic_state* next; } ;
union acpi_generic_state {TYPE_2__ common; TYPE_1__ scope; } ;
struct acpi_walk_state {union acpi_generic_state* scope_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_generic_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds_scope_stack_clear ; 

void FUNC4(struct acpi_walk_state *walk_state)
{
	union acpi_generic_state *scope_info;

	FUNC1(ds_scope_stack_clear);

	while (walk_state->scope_info) {

		/* Pop a scope off the stack */

		scope_info = walk_state->scope_info;
		walk_state->scope_info = scope_info->scope.next;

		FUNC0((ACPI_DB_EXEC,
				  "Popped object type (%s)\n",
				  FUNC3(scope_info->common.
							value)));
		FUNC2(scope_info);
	}
}