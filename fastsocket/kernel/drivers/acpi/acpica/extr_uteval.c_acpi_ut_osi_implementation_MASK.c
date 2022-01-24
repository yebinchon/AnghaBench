#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t value; } ;
struct TYPE_9__ {int /*<<< orphan*/  pointer; } ;
struct TYPE_8__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_4__ integer; TYPE_3__ string; TYPE_2__ common; } ;
typedef  size_t u32 ;
struct acpi_walk_state {union acpi_operand_object* return_desc; TYPE_1__* arguments; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_11__ {scalar_t__ value; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {union acpi_operand_object* object; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 scalar_t__ ACPI_TYPE_STRING ; 
 size_t ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 scalar_t__ acpi_gbl_osi_data ; 
 TYPE_5__* acpi_interfaces_supported ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_osi_implementation ; 

acpi_status FUNC8(struct acpi_walk_state *walk_state)
{
	acpi_status status;
	union acpi_operand_object *string_desc;
	union acpi_operand_object *return_desc;
	u32 return_value;
	u32 i;

	FUNC2(ut_osi_implementation);

	/* Validate the string input argument */

	string_desc = walk_state->arguments[0].object;
	if (!string_desc || (string_desc->common.type != ACPI_TYPE_STRING)) {
		FUNC7(AE_TYPE);
	}

	/* Create a return object */

	return_desc = FUNC6(ACPI_TYPE_INTEGER);
	if (!return_desc) {
		FUNC7(AE_NO_MEMORY);
	}

	/* Default return value is 0, NOT SUPPORTED */

	return_value = 0;

	/* Compare input string to static table of supported interfaces */

	for (i = 0; i < FUNC0(acpi_interfaces_supported); i++) {
		if (!FUNC3(string_desc->string.pointer,
				 acpi_interfaces_supported[i].name)) {
			/*
			 * The interface is supported.
			 * Update the osi_data if necessary. We keep track of the latest
			 * version of Windows that has been requested by the BIOS.
			 */
			if (acpi_interfaces_supported[i].value >
			    acpi_gbl_osi_data) {
				acpi_gbl_osi_data =
				    acpi_interfaces_supported[i].value;
			}

			return_value = ACPI_UINT32_MAX;
			goto exit;
		}
	}

	/*
	 * Did not match the string in the static table, call the host OSL to
	 * check for a match with one of the optional strings (such as
	 * "Module Device", "3.0 Thermal Model", etc.)
	 */
	status = FUNC5(string_desc->string.pointer);
	if (FUNC4(status)) {

		/* The interface is supported */

		return_value = ACPI_UINT32_MAX;
	}

exit:
	FUNC1 ((ACPI_DB_INFO,
		"ACPI: BIOS _OSI(%s) is %ssupported\n",
		string_desc->string.pointer, return_value == 0 ? "not " : ""));

	/* Complete the return value */

	return_desc->integer.value = return_value;
	walk_state->return_desc = return_desc;
	FUNC7 (AE_OK);
}