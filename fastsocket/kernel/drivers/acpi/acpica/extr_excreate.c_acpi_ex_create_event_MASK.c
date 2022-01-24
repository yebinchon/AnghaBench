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
struct TYPE_2__ {int /*<<< orphan*/  os_semaphore; } ;
union acpi_operand_object {TYPE_1__ event; } ;
struct acpi_walk_state {scalar_t__* operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NO_UNIT_LIMIT ; 
 int /*<<< orphan*/  ACPI_TYPE_EVENT ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 union acpi_operand_object* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_create_event ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status FUNC7(struct acpi_walk_state *walk_state)
{
	acpi_status status;
	union acpi_operand_object *obj_desc;

	FUNC1(ex_create_event);

	obj_desc = FUNC4(ACPI_TYPE_EVENT);
	if (!obj_desc) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	/*
	 * Create the actual OS semaphore, with zero initial units -- meaning
	 * that the event is created in an unsignalled state
	 */
	status = FUNC3(ACPI_NO_UNIT_LIMIT, 0,
					  &obj_desc->event.os_semaphore);
	if (FUNC0(status)) {
		goto cleanup;
	}

	/* Attach object to the Node */

	status =
	    FUNC2((struct acpi_namespace_node *)walk_state->
				  operands[0], obj_desc, ACPI_TYPE_EVENT);

      cleanup:
	/*
	 * Remove local reference to the object (on error, will cause deletion
	 * of both object and semaphore if present.)
	 */
	FUNC5(obj_desc);
	FUNC6(status);
}