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
struct TYPE_3__ {int /*<<< orphan*/  node; } ;
union acpi_generic_state {TYPE_2__ common; TYPE_1__ scope; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {union acpi_generic_state* scope_info; scalar_t__ scope_depth; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_STACK_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC3 (union acpi_generic_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 union acpi_generic_state* FUNC6 (union acpi_generic_state**) ; 
 int /*<<< orphan*/  ds_scope_stack_pop ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status FUNC8(struct acpi_walk_state *walk_state)
{
	union acpi_generic_state *scope_info;
	union acpi_generic_state *new_scope_info;

	FUNC2(ds_scope_stack_pop);

	/*
	 * Pop scope info object off the stack.
	 */
	scope_info = FUNC6(&walk_state->scope_info);
	if (!scope_info) {
		FUNC7(AE_STACK_UNDERFLOW);
	}

	walk_state->scope_depth--;

	FUNC0((ACPI_DB_EXEC,
			  "[%.2d] Popped scope [%4.4s] (%s), New scope -> ",
			  (u32) walk_state->scope_depth,
			  FUNC4(scope_info->scope.node),
			  FUNC5(scope_info->common.value)));

	new_scope_info = walk_state->scope_info;
	if (new_scope_info) {
		FUNC1((ACPI_DB_EXEC,
				      "[%4.4s] (%s)\n",
				      FUNC4(new_scope_info->
							    scope.node),
				      FUNC5(new_scope_info->
							    common.value)));
	} else {
		FUNC1((ACPI_DB_EXEC, "[\\___] (ROOT)\n"));
	}

	FUNC3(scope_info);
	FUNC7(AE_OK);
}