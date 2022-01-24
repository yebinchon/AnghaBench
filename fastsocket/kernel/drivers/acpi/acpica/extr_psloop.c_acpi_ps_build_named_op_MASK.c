#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {union acpi_parse_object* arg; } ;
struct TYPE_5__ {scalar_t__ aml_opcode; TYPE_1__ value; scalar_t__ arg_list_length; } ;
union acpi_parse_object {TYPE_3__ named; TYPE_2__ common; } ;
typedef  int /*<<< orphan*/  u8 ;
struct acpi_walk_state {scalar_t__ opcode; scalar_t__ (* descending_callback ) (struct acpi_walk_state*,union acpi_parse_object**) ;int /*<<< orphan*/ * op; int /*<<< orphan*/  arg_types; int /*<<< orphan*/  parser_state; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 scalar_t__ AE_AML_NO_OPERAND ; 
 scalar_t__ AE_CTRL_PARSE_CONTINUE ; 
 scalar_t__ AE_CTRL_PARSE_PENDING ; 
 scalar_t__ AE_CTRL_PENDING ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AML_DATA_REGION_OP ; 
 scalar_t__ AML_REGION_OP ; 
 scalar_t__ ARGP_NAME ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_depth ; 
 int /*<<< orphan*/  FUNC5 (union acpi_parse_object*,union acpi_parse_object*) ; 
 scalar_t__ FUNC6 (struct acpi_walk_state*,int /*<<< orphan*/ *,scalar_t__,union acpi_parse_object**) ; 
 scalar_t__ FUNC7 (struct acpi_walk_state*,union acpi_parse_object*,scalar_t__) ; 
 int /*<<< orphan*/  ps_build_named_op ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct acpi_walk_state*,union acpi_parse_object**) ; 

__attribute__((used)) static acpi_status
FUNC10(struct acpi_walk_state *walk_state,
		       u8 * aml_op_start,
		       union acpi_parse_object *unnamed_op,
		       union acpi_parse_object **op)
{
	acpi_status status = AE_OK;
	union acpi_parse_object *arg = NULL;

	FUNC2(ps_build_named_op, walk_state);

	unnamed_op->common.value.arg = NULL;
	unnamed_op->common.arg_list_length = 0;
	unnamed_op->common.aml_opcode = walk_state->opcode;

	/*
	 * Get and append arguments until we find the node that contains
	 * the name (the type ARGP_NAME).
	 */
	while (FUNC3(walk_state->arg_types) &&
	       (FUNC3(walk_state->arg_types) != ARGP_NAME)) {
		status =
		    FUNC6(walk_state,
					 &(walk_state->parser_state),
					 FUNC3(walk_state->
							      arg_types), &arg);
		if (FUNC1(status)) {
			FUNC8(status);
		}

		FUNC5(unnamed_op, arg);
		FUNC4(walk_state->arg_types);
	}

	/*
	 * Make sure that we found a NAME and didn't run out of arguments
	 */
	if (!FUNC3(walk_state->arg_types)) {
		FUNC8(AE_AML_NO_OPERAND);
	}

	/* We know that this arg is a name, move to next arg */

	FUNC4(walk_state->arg_types);

	/*
	 * Find the object. This will either insert the object into
	 * the namespace or simply look it up
	 */
	walk_state->op = NULL;

	status = walk_state->descending_callback(walk_state, op);
	if (FUNC1(status)) {
		FUNC0((AE_INFO, status, "During name lookup/catalog"));
		FUNC8(status);
	}

	if (!*op) {
		FUNC8(AE_CTRL_PARSE_CONTINUE);
	}

	status = FUNC7(walk_state, *op, status);
	if (FUNC1(status)) {
		if (status == AE_CTRL_PENDING) {
			FUNC8(AE_CTRL_PARSE_PENDING);
		}
		FUNC8(status);
	}

	FUNC5(*op, unnamed_op->common.value.arg);
	acpi_gbl_depth++;

	if ((*op)->common.aml_opcode == AML_REGION_OP ||
	    (*op)->common.aml_opcode == AML_DATA_REGION_OP) {
		/*
		 * Defer final parsing of an operation_region body, because we don't
		 * have enough info in the first pass to parse it correctly (i.e.,
		 * there may be method calls within the term_arg elements of the body.)
		 *
		 * However, we must continue parsing because the opregion is not a
		 * standalone package -- we don't know where the end is at this point.
		 *
		 * (Length is unknown until parse of the body complete)
		 */
		(*op)->named.data = aml_op_start;
		(*op)->named.length = 0;
	}

	FUNC8(AE_OK);
}