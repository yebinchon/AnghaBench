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
struct TYPE_2__ {int /*<<< orphan*/  aml_start; } ;
union acpi_operand_object {TYPE_1__ method; } ;
struct acpi_evaluate_info {int /*<<< orphan*/  prefix_node; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_evaluate_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_evaluate_info*) ; 
 union acpi_operand_object* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ns_exec_module_code ; 
 int /*<<< orphan*/  return_VOID ; 

__attribute__((used)) static void
FUNC10(union acpi_operand_object *method_obj,
			 struct acpi_evaluate_info *info)
{
	union acpi_operand_object *root_obj;
	acpi_status status;

	FUNC2(ns_exec_module_code);

	/* Initialize the evaluation information block */

	FUNC3(info, 0, sizeof(struct acpi_evaluate_info));
	info->prefix_node = acpi_gbl_root_node;

	/*
	 * Get the currently attached root object. Add a reference, because the
	 * ref count will be decreased when the method object is installed to
	 * the root node.
	 */
	root_obj = FUNC7(acpi_gbl_root_node);
	FUNC8(root_obj);

	/* Install the method (module-level code) in the root node */

	status = FUNC4(acpi_gbl_root_node, method_obj,
				       ACPI_TYPE_METHOD);
	if (FUNC1(status)) {
		goto exit;
	}

	/* Execute the root node as a control method */

	status = FUNC6(info);

	FUNC0((ACPI_DB_INIT, "Executed module-level code at %p\n",
			  method_obj->method.aml_start));

	/* Detach the temporary method object */

	FUNC5(acpi_gbl_root_node);

	/* Restore the original root object */

	status =
	    FUNC4(acpi_gbl_root_node, root_obj,
				  ACPI_TYPE_DEVICE);

      exit:
	FUNC9(root_obj);
	return_VOID;
}