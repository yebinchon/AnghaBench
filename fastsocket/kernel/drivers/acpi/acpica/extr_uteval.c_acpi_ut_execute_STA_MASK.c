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
struct TYPE_2__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef  scalar_t__ u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BTYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_UINT32_MAX ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  METHOD_NAME__STA ; 
 scalar_t__ FUNC3 (struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  ut_execute_STA ; 

acpi_status
FUNC7(struct acpi_namespace_node *device_node, u32 * flags)
{
	union acpi_operand_object *obj_desc;
	acpi_status status;

	FUNC2(ut_execute_STA);

	status = FUNC3(device_node, METHOD_NAME__STA,
					 ACPI_BTYPE_INTEGER, &obj_desc);
	if (FUNC1(status)) {
		if (AE_NOT_FOUND == status) {
			FUNC0((ACPI_DB_EXEC,
					  "_STA on %4.4s was not found, assuming device is present\n",
					  FUNC4(device_node)));

			*flags = ACPI_UINT32_MAX;
			status = AE_OK;
		}

		FUNC6(status);
	}

	/* Extract the status flags */

	*flags = (u32) obj_desc->integer.value;

	/* On exit, we must delete the return object */

	FUNC5(obj_desc);
	FUNC6(status);
}