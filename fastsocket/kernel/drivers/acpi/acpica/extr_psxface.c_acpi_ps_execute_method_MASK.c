#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;
struct acpi_walk_state {TYPE_4__* implicit_return_obj; int /*<<< orphan*/  method_desc; int /*<<< orphan*/  parser_state; scalar_t__ return_desc; int /*<<< orphan*/  parse_flags; } ;
struct acpi_evaluate_info {scalar_t__ return_object; TYPE_7__* obj_desc; int /*<<< orphan*/  pass_number; TYPE_5__* resolved_node; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_9__ {int flags; int method_flags; int /*<<< orphan*/  (* implementation ) (struct acpi_walk_state*) ;int /*<<< orphan*/  aml_length; int /*<<< orphan*/  aml_start; int /*<<< orphan*/  owner_id; } ;
struct TYPE_13__ {TYPE_2__ method; } ;
struct TYPE_8__ {int /*<<< orphan*/  ascii; } ;
struct TYPE_12__ {TYPE_1__ name; } ;
struct TYPE_10__ {scalar_t__ value; } ;
struct TYPE_11__ {TYPE_3__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IMODE_EXECUTE ; 
 int /*<<< orphan*/  ACPI_PARSE_MODULE_LEVEL ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_CTRL_RETURN_VALUE ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_NULL_ENTRY ; 
 int AML_METHOD_INTERNAL_ONLY ; 
 int AOPOBJ_MODULE_LEVEL ; 
 int /*<<< orphan*/  REF_DECREMENT ; 
 int /*<<< orphan*/  REF_INCREMENT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 struct acpi_walk_state* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_walk_state*,union acpi_parse_object*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_evaluate_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 scalar_t__ acpi_gbl_enable_interpreter_slack ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 union acpi_parse_object* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC13 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct acpi_evaluate_info*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_execute_method ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct acpi_walk_state*) ; 

acpi_status FUNC20(struct acpi_evaluate_info *info)
{
	acpi_status status;
	union acpi_parse_object *op;
	struct acpi_walk_state *walk_state;

	FUNC3(ps_execute_method);

	/* Validate the Info and method Node */

	if (!info || !info->resolved_node) {
		FUNC18(AE_NULL_ENTRY);
	}

	/* Init for new method, wait on concurrency semaphore */

	status =
	    FUNC4(info->resolved_node, info->obj_desc,
					   NULL);
	if (FUNC2(status)) {
		FUNC18(status);
	}

	/*
	 * The caller "owns" the parameters, so give each one an extra reference
	 */
	FUNC16(info, REF_INCREMENT);

	/* Begin tracing if requested */

	FUNC14(info);

	/*
	 * Execute the method. Performs parse simultaneously
	 */
	FUNC0((ACPI_DB_PARSE,
			  "**** Begin Method Parse/Execute [%4.4s] **** Node=%p Obj=%p\n",
			  info->resolved_node->name.ascii, info->resolved_node,
			  info->obj_desc));

	/* Create and init a Root Node */

	op = FUNC11();
	if (!op) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	/* Create and initialize a new walk state */

	info->pass_number = ACPI_IMODE_EXECUTE;
	walk_state =
	    FUNC5(info->obj_desc->method.owner_id, NULL,
				      NULL, NULL);
	if (!walk_state) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	status = FUNC7(walk_state, op, info->resolved_node,
				       info->obj_desc->method.aml_start,
				       info->obj_desc->method.aml_length, info,
				       info->pass_number);
	if (FUNC2(status)) {
		FUNC6(walk_state);
		goto cleanup;
	}

	if (info->obj_desc->method.flags & AOPOBJ_MODULE_LEVEL) {
		walk_state->parse_flags |= ACPI_PARSE_MODULE_LEVEL;
	}

	/* Invoke an internal method if necessary */

	if (info->obj_desc->method.method_flags & AML_METHOD_INTERNAL_ONLY) {
		status = info->obj_desc->method.implementation(walk_state);
		info->return_object = walk_state->return_desc;

		/* Cleanup states */

		FUNC8(walk_state);
		FUNC10(&walk_state->parser_state);
		FUNC9(walk_state->method_desc,
						 walk_state);
		FUNC6(walk_state);
		goto cleanup;
	}

	/*
	 * Start method evaluation with an implicit return of zero.
	 * This is done for Windows compatibility.
	 */
	if (acpi_gbl_enable_interpreter_slack) {
		walk_state->implicit_return_obj =
		    FUNC17(ACPI_TYPE_INTEGER);
		if (!walk_state->implicit_return_obj) {
			status = AE_NO_MEMORY;
			FUNC6(walk_state);
			goto cleanup;
		}

		walk_state->implicit_return_obj->integer.value = 0;
	}

	/* Parse the AML */

	status = FUNC13(walk_state);

	/* walk_state was deleted by parse_aml */

      cleanup:
	FUNC12(op);

	/* End optional tracing */

	FUNC15(info);

	/* Take away the extra reference that we gave the parameters above */

	FUNC16(info, REF_DECREMENT);

	/* Exit now if error above */

	if (FUNC2(status)) {
		FUNC18(status);
	}

	/*
	 * If the method has returned an object, signal this to the caller with
	 * a control exception code
	 */
	if (info->return_object) {
		FUNC0((ACPI_DB_PARSE, "Method returned ObjDesc=%p\n",
				  info->return_object));
		FUNC1(info->return_object);

		status = AE_CTRL_RETURN_VALUE;
	}

	FUNC18(status);
}