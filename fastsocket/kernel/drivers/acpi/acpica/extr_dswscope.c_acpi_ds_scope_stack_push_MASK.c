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
struct TYPE_4__ {scalar_t__ value; int /*<<< orphan*/  descriptor_type; } ;
struct TYPE_3__ {struct acpi_namespace_node* node; } ;
union acpi_generic_state {TYPE_2__ common; TYPE_1__ scope; } ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct acpi_walk_state {union acpi_generic_state* scope_info; scalar_t__ scope_depth; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE_WSCOPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 union acpi_generic_state* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_generic_state**,union acpi_generic_state*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  ds_scope_stack_push ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC11(struct acpi_namespace_node *node,
			 acpi_object_type type,
			 struct acpi_walk_state *walk_state)
{
	union acpi_generic_state *scope_info;
	union acpi_generic_state *old_scope_info;

	FUNC3(ds_scope_stack_push);

	if (!node) {

		/* Invalid scope   */

		FUNC2((AE_INFO, "Null scope parameter"));
		FUNC10(AE_BAD_PARAMETER);
	}

	/* Make sure object type is valid */

	if (!FUNC9(type)) {
		FUNC4((AE_INFO, "Invalid object type: 0x%X", type));
	}

	/* Allocate a new scope object */

	scope_info = FUNC5();
	if (!scope_info) {
		FUNC10(AE_NO_MEMORY);
	}

	/* Init new scope object */

	scope_info->common.descriptor_type = ACPI_DESC_TYPE_STATE_WSCOPE;
	scope_info->scope.node = node;
	scope_info->common.value = (u16) type;

	walk_state->scope_depth++;

	FUNC0((ACPI_DB_EXEC,
			  "[%.2d] Pushed scope ",
			  (u32) walk_state->scope_depth));

	old_scope_info = walk_state->scope_info;
	if (old_scope_info) {
		FUNC1((ACPI_DB_EXEC,
				      "[%4.4s] (%s)",
				      FUNC6(old_scope_info->
							    scope.node),
				      FUNC7(old_scope_info->
							    common.value)));
	} else {
		FUNC1((ACPI_DB_EXEC, "[\\___] (%s)", "ROOT"));
	}

	FUNC1((ACPI_DB_EXEC,
			      ", New scope -> [%4.4s] (%s)\n",
			      FUNC6(scope_info->scope.node),
			      FUNC7(scope_info->common.value)));

	/* Push new scope object onto stack */

	FUNC8(&walk_state->scope_info, scope_info);
	FUNC10(AE_OK);
}