#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char* name; } ;
struct TYPE_16__ {TYPE_7__ value; TYPE_6__* parent; struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_8__ common; } ;
struct TYPE_10__ {int param_count; } ;
union acpi_operand_object {TYPE_2__ method; } ;
typedef  scalar_t__ u8 ;
struct TYPE_9__ {scalar_t__* aml; } ;
struct acpi_walk_state {scalar_t__ opcode; int arg_count; int parse_flags; TYPE_4__* op; TYPE_1__ parser_state; int /*<<< orphan*/  scope_info; } ;
struct acpi_parse_state {scalar_t__* aml; } ;
struct acpi_namespace_node {scalar_t__ type; } ;
typedef  scalar_t__ acpi_status ;
struct TYPE_13__ {scalar_t__ aml_opcode; } ;
struct TYPE_14__ {TYPE_5__ common; } ;
struct TYPE_11__ {scalar_t__ aml_opcode; } ;
struct TYPE_12__ {TYPE_3__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IMODE_EXECUTE ; 
 int ACPI_NS_DONT_OPEN_SCOPE ; 
 int ACPI_NS_SEARCH_PARENT ; 
 int ACPI_PARSE_EXECUTE ; 
 int ACPI_PARSE_MODE_MASK ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 scalar_t__ ACPI_TYPE_METHOD ; 
 scalar_t__ AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ AE_NO_MEMORY ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AML_COND_REF_OF_OP ; 
 int /*<<< orphan*/  AML_INT_METHODCALL_OP ; 
 int /*<<< orphan*/  AML_INT_NAMEPATH_OP ; 
 scalar_t__ AML_PACKAGE_OP ; 
 scalar_t__ AML_UNLOAD_OP ; 
 scalar_t__ AML_VAR_PACKAGE_OP ; 
 scalar_t__ FUNC6 (scalar_t__,struct acpi_walk_state*) ; 
 union acpi_operand_object* FUNC7 (struct acpi_namespace_node*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct acpi_namespace_node**) ; 
 union acpi_parse_object* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_parse_object*,union acpi_parse_object*) ; 
 char* FUNC11 (struct acpi_parse_state*) ; 
 int /*<<< orphan*/  FUNC12 (union acpi_parse_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_get_next_namepath ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

acpi_status
FUNC14(struct acpi_walk_state *walk_state,
			  struct acpi_parse_state *parser_state,
			  union acpi_parse_object *arg, u8 possible_method_call)
{
	acpi_status status;
	char *path;
	union acpi_parse_object *name_op;
	union acpi_operand_object *method_desc;
	struct acpi_namespace_node *node;
	u8 *start = parser_state->aml;

	FUNC4(ps_get_next_namepath);

	path = FUNC11(parser_state);
	FUNC12(arg, AML_INT_NAMEPATH_OP);

	/* Null path case is allowed, just exit */

	if (!path) {
		arg->common.value.name = path;
		FUNC13(AE_OK);
	}

	/*
	 * Lookup the name in the internal namespace, starting with the current
	 * scope. We don't want to add anything new to the namespace here,
	 * however, so we use MODE_EXECUTE.
	 * Allow searching of the parent tree, but don't open a new scope -
	 * we just want to lookup the object (must be mode EXECUTE to perform
	 * the upsearch)
	 */
	status = FUNC8(walk_state->scope_info, path,
				ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE,
				ACPI_NS_SEARCH_PARENT | ACPI_NS_DONT_OPEN_SCOPE,
				NULL, &node);

	/*
	 * If this name is a control method invocation, we must
	 * setup the method call
	 */
	if (FUNC5(status) &&
	    possible_method_call && (node->type == ACPI_TYPE_METHOD)) {
		if (walk_state->opcode == AML_UNLOAD_OP) {
			/*
			 * acpi_ps_get_next_namestring has increased the AML pointer,
			 * so we need to restore the saved AML pointer for method call.
			 */
			walk_state->parser_state.aml = start;
			walk_state->arg_count = 1;
			FUNC12(arg, AML_INT_METHODCALL_OP);
			FUNC13(AE_OK);
		}

		/* This name is actually a control method invocation */

		method_desc = FUNC7(node);
		FUNC0((ACPI_DB_PARSE,
				  "Control Method - %p Desc %p Path=%p\n", node,
				  method_desc, path));

		name_op = FUNC9(AML_INT_NAMEPATH_OP);
		if (!name_op) {
			FUNC13(AE_NO_MEMORY);
		}

		/* Change Arg into a METHOD CALL and attach name to it */

		FUNC12(arg, AML_INT_METHODCALL_OP);
		name_op->common.value.name = path;

		/* Point METHODCALL/NAME to the METHOD Node */

		name_op->common.node = node;
		FUNC10(arg, name_op);

		if (!method_desc) {
			FUNC1((AE_INFO,
				    "Control Method %p has no attached object",
				    node));
			FUNC13(AE_AML_INTERNAL);
		}

		FUNC0((ACPI_DB_PARSE,
				  "Control Method - %p Args %X\n",
				  node, method_desc->method.param_count));

		/* Get the number of arguments to expect */

		walk_state->arg_count = method_desc->method.param_count;
		FUNC13(AE_OK);
	}

	/*
	 * Special handling if the name was not found during the lookup -
	 * some not_found cases are allowed
	 */
	if (status == AE_NOT_FOUND) {

		/* 1) not_found is ok during load pass 1/2 (allow forward references) */

		if ((walk_state->parse_flags & ACPI_PARSE_MODE_MASK) !=
		    ACPI_PARSE_EXECUTE) {
			status = AE_OK;
		}

		/* 2) not_found during a cond_ref_of(x) is ok by definition */

		else if (walk_state->op->common.aml_opcode ==
			 AML_COND_REF_OF_OP) {
			status = AE_OK;
		}

		/*
		 * 3) not_found while building a Package is ok at this point, we
		 * may flag as an error later if slack mode is not enabled.
		 * (Some ASL code depends on allowing this behavior)
		 */
		else if ((arg->common.parent) &&
			 ((arg->common.parent->common.aml_opcode ==
			   AML_PACKAGE_OP)
			  || (arg->common.parent->common.aml_opcode ==
			      AML_VAR_PACKAGE_OP))) {
			status = AE_OK;
		}
	}

	/* Final exception check (may have been changed from code above) */

	if (FUNC3(status)) {
		FUNC2(path, status);

		if ((walk_state->parse_flags & ACPI_PARSE_MODE_MASK) ==
		    ACPI_PARSE_EXECUTE) {

			/* Report a control method execution error */

			status = FUNC6(status, walk_state);
		}
	}

	/* Save the namepath */

	arg->common.value.name = path;
	FUNC13(status);
}