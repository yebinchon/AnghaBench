#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_walk_state {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC3 (union acpi_parse_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_delete_result_if_not_used ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC6(union acpi_parse_object *op,
				  union acpi_operand_object *result_obj,
				  struct acpi_walk_state *walk_state)
{
	union acpi_operand_object *obj_desc;
	acpi_status status;

	FUNC1(ds_delete_result_if_not_used, result_obj);

	if (!op) {
		FUNC0((AE_INFO, "Null Op"));
		return_VOID;
	}

	if (!result_obj) {
		return_VOID;
	}

	if (!FUNC3(op, walk_state)) {

		/* Must pop the result stack (obj_desc should be equal to result_obj) */

		status = FUNC4(&obj_desc, walk_state);
		if (FUNC2(status)) {
			FUNC5(result_obj);
		}
	}

	return_VOID;
}