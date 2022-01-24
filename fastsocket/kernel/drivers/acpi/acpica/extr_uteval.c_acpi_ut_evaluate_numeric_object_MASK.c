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
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_integer ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BTYPE_INTEGER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*,char*,int /*<<< orphan*/ ,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_evaluate_numeric_object ; 

acpi_status
FUNC5(char *object_name,
				struct acpi_namespace_node *device_node,
				acpi_integer *value)
{
	union acpi_operand_object *obj_desc;
	acpi_status status;

	FUNC1(ut_evaluate_numeric_object);

	status = FUNC2(device_node, object_name,
					 ACPI_BTYPE_INTEGER, &obj_desc);
	if (FUNC0(status)) {
		FUNC4(status);
	}

	/* Get the returned Integer */

	*value = obj_desc->integer.value;

	/* On exit, we must delete the return object */

	FUNC3(obj_desc);
	FUNC4(status);
}