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
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;
struct TYPE_4__ {int /*<<< orphan*/  arg_end; int /*<<< orphan*/  pkg_end; scalar_t__ arg_count; scalar_t__ arg_list; union acpi_parse_object* op; } ;
struct TYPE_3__ {int /*<<< orphan*/  descriptor_type; } ;
union acpi_generic_state {TYPE_2__ parse_scope; TYPE_1__ common; } ;
typedef  scalar_t__ u32 ;
struct acpi_parse_state {int /*<<< orphan*/  pkg_end; int /*<<< orphan*/  scope; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE_PSCOPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,union acpi_parse_object*) ; 
 int /*<<< orphan*/  ACPI_MAX_PTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_VAR_ARGS ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 union acpi_generic_state* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,union acpi_generic_state*) ; 
 int /*<<< orphan*/  ps_push_scope ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC5(struct acpi_parse_state *parser_state,
		   union acpi_parse_object *op,
		   u32 remaining_args, u32 arg_count)
{
	union acpi_generic_state *scope;

	FUNC0(ps_push_scope, op);

	scope = FUNC2();
	if (!scope) {
		FUNC4(AE_NO_MEMORY);
	}

	scope->common.descriptor_type = ACPI_DESC_TYPE_STATE_PSCOPE;
	scope->parse_scope.op = op;
	scope->parse_scope.arg_list = remaining_args;
	scope->parse_scope.arg_count = arg_count;
	scope->parse_scope.pkg_end = parser_state->pkg_end;

	/* Push onto scope stack */

	FUNC3(&parser_state->scope, scope);

	if (arg_count == ACPI_VAR_ARGS) {

		/* Multiple arguments */

		scope->parse_scope.arg_end = parser_state->pkg_end;
	} else {
		/* Single argument */

		scope->parse_scope.arg_end = FUNC1(ACPI_MAX_PTR);
	}

	FUNC4(AE_OK);
}