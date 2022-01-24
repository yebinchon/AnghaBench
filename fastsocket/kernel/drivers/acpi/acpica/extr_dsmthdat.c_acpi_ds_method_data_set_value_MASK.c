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
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  reference_count; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {union acpi_operand_object* object; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_walk_state*,struct acpi_namespace_node**) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds_method_data_set_value ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC7(u8 type,
			      u32 index,
			      union acpi_operand_object *object,
			      struct acpi_walk_state *walk_state)
{
	acpi_status status;
	struct acpi_namespace_node *node;

	FUNC2(ds_method_data_set_value);

	FUNC0((ACPI_DB_EXEC,
			  "NewObj %p Type %2.2X, Refs=%d [%s]\n", object,
			  type, object->common.reference_count,
			  FUNC5(object->common.type)));

	/* Get the namespace node for the arg/local */

	status = FUNC3(type, index, walk_state, &node);
	if (FUNC1(status)) {
		FUNC6(status);
	}

	/*
	 * Increment ref count so object can't be deleted while installed.
	 * NOTE: We do not copy the object in order to preserve the call by
	 * reference semantics of ACPI Control Method invocation.
	 * (See ACPI Specification 2.0_c)
	 */
	FUNC4(object);

	/* Install the object */

	node->object = object;
	FUNC6(status);
}