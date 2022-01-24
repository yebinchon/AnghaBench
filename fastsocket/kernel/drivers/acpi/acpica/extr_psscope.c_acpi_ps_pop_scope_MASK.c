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
struct TYPE_4__ {int /*<<< orphan*/  pkg_end; scalar_t__ arg_count; scalar_t__ arg_list; union acpi_parse_object* op; } ;
struct TYPE_3__ {scalar_t__ next; } ;
union acpi_generic_state {TYPE_2__ parse_scope; TYPE_1__ common; } ;
typedef  scalar_t__ u32 ;
struct acpi_parse_state {int /*<<< orphan*/  pkg_end; union acpi_generic_state* scope; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_generic_state*) ; 
 union acpi_generic_state* FUNC3 (union acpi_generic_state**) ; 
 int /*<<< orphan*/  ps_pop_scope ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC4(struct acpi_parse_state *parser_state,
		  union acpi_parse_object **op, u32 * arg_list, u32 * arg_count)
{
	union acpi_generic_state *scope = parser_state->scope;

	FUNC1(ps_pop_scope);

	/* Only pop the scope if there is in fact a next scope */

	if (scope->common.next) {
		scope = FUNC3(&parser_state->scope);

		/* Return to parsing previous op */

		*op = scope->parse_scope.op;
		*arg_list = scope->parse_scope.arg_list;
		*arg_count = scope->parse_scope.arg_count;
		parser_state->pkg_end = scope->parse_scope.pkg_end;

		/* All done with this scope state structure */

		FUNC2(scope);
	} else {
		/* Empty parse stack, prepare to fetch next opcode */

		*op = NULL;
		*arg_list = 0;
		*arg_count = 0;
	}

	FUNC0((ACPI_DB_PARSE,
			  "Popped Op %p Args %X\n", *op, *arg_count));
	return_VOID;
}