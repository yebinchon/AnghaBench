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
struct TYPE_2__ {union acpi_operand_object* mutex; } ;
union acpi_operand_object {TYPE_1__ method; } ;
typedef  scalar_t__ u32 ;
struct acpi_evaluate_info {int dummy; } ;

/* Variables and functions */
 struct acpi_evaluate_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 union acpi_operand_object* acpi_gbl_module_code_list ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*,struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ns_exec_module_code_list ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC6(void)
{
	union acpi_operand_object *prev;
	union acpi_operand_object *next;
	struct acpi_evaluate_info *info;
	u32 method_count = 0;

	FUNC2(ns_exec_module_code_list);

	/* Exit now if the list is empty */

	next = acpi_gbl_module_code_list;
	if (!next) {
		return_VOID;
	}

	/* Allocate the evaluation information block */

	info = FUNC0(sizeof(struct acpi_evaluate_info));
	if (!info) {
		return_VOID;
	}

	/* Walk the list, executing each "method" */

	while (next) {
		prev = next;
		next = next->method.mutex;

		/* Clear the link field and execute the method */

		prev->method.mutex = NULL;
		FUNC4(prev, info);
		method_count++;

		/* Delete the (temporary) method object */

		FUNC5(prev);
	}

	FUNC3((AE_INFO,
		   "Executed %u blocks of module-level executable AML code",
		   method_count));

	FUNC1(info);
	acpi_gbl_module_code_list = NULL;
	return_VOID;
}