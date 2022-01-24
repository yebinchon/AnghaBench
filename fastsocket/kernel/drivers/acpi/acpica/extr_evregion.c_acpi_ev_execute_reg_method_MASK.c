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
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int /*<<< orphan*/  space_id; } ;
struct TYPE_4__ {int /*<<< orphan*/ * method_REG; } ;
union acpi_operand_object {TYPE_3__ integer; TYPE_2__ region; TYPE_1__ extra; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_evaluate_info {int /*<<< orphan*/ * prefix_node; int /*<<< orphan*/  flags; union acpi_operand_object** parameters; int /*<<< orphan*/ * pathname; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 struct acpi_evaluate_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IGNORE_RETURN_VALUE ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_evaluate_info*) ; 
 union acpi_operand_object* FUNC5 (union acpi_operand_object*) ; 
 union acpi_operand_object* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ev_execute_reg_method ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC10(union acpi_operand_object *region_obj, u32 function)
{
	struct acpi_evaluate_info *info;
	union acpi_operand_object *args[3];
	union acpi_operand_object *region_obj2;
	acpi_status status;

	FUNC3(ev_execute_reg_method);

	region_obj2 = FUNC5(region_obj);
	if (!region_obj2) {
		FUNC9(AE_NOT_EXIST);
	}

	if (region_obj2->extra.method_REG == NULL) {
		FUNC9(AE_OK);
	}

	/* Allocate and initialize the evaluation information block */

	info = FUNC0(sizeof(struct acpi_evaluate_info));
	if (!info) {
		FUNC9(AE_NO_MEMORY);
	}

	info->prefix_node = region_obj2->extra.method_REG;
	info->pathname = NULL;
	info->parameters = args;
	info->flags = ACPI_IGNORE_RETURN_VALUE;

	/*
	 * The _REG method has two arguments:
	 *
	 * Arg0 - Integer:
	 *  Operation region space ID Same value as region_obj->Region.space_id
	 *
	 * Arg1 - Integer:
	 *  connection status 1 for connecting the handler, 0 for disconnecting
	 *  the handler (Passed as a parameter)
	 */
	args[0] = FUNC6(ACPI_TYPE_INTEGER);
	if (!args[0]) {
		status = AE_NO_MEMORY;
		goto cleanup1;
	}

	args[1] = FUNC6(ACPI_TYPE_INTEGER);
	if (!args[1]) {
		status = AE_NO_MEMORY;
		goto cleanup2;
	}

	/* Setup the parameter objects */

	args[0]->integer.value = region_obj->region.space_id;
	args[1]->integer.value = function;
	args[2] = NULL;

	/* Execute the method, no return value */

	FUNC1(FUNC7
			(ACPI_TYPE_METHOD, info->prefix_node, NULL));

	status = FUNC4(info);
	FUNC8(args[1]);

      cleanup2:
	FUNC8(args[0]);

      cleanup1:
	FUNC2(info);
	FUNC9(status);
}