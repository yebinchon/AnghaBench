#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct acpi_evaluate_info {int dummy; } ;
struct acpi_device_walk_info {scalar_t__ device_count; scalar_t__ num_STA; scalar_t__ num_INI; TYPE_1__* evaluate_info; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/ * parameters; int /*<<< orphan*/  pathname; int /*<<< orphan*/  prefix_node; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IGNORE_RETURN_VALUE ; 
 scalar_t__ ACPI_OSI_WIN_2000 ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  METHOD_NAME__INI ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ acpi_gbl_osi_data ; 
 int /*<<< orphan*/  acpi_gbl_root_node ; 
 int /*<<< orphan*/  acpi_gbl_truncate_io_addresses ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  acpi_ns_find_ini_methods ; 
 int /*<<< orphan*/  acpi_ns_init_one_device ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_device_walk_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ns_initialize_devices ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status FUNC10(void)
{
	acpi_status status;
	struct acpi_device_walk_info info;

	FUNC5(ns_initialize_devices);

	/* Init counters */

	info.device_count = 0;
	info.num_STA = 0;
	info.num_INI = 0;

	FUNC1((ACPI_DB_INIT,
			      "Initializing Device/Processor/Thermal objects "
			      "by executing _INI methods:"));

	/* Tree analysis: find all subtrees that contain _INI methods */

	status = FUNC8(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
					ACPI_UINT32_MAX, FALSE,
					acpi_ns_find_ini_methods, &info, NULL);
	if (FUNC3(status)) {
		goto error_exit;
	}

	/* Allocate the evaluation information block */

	info.evaluate_info =
	    FUNC0(sizeof(struct acpi_evaluate_info));
	if (!info.evaluate_info) {
		status = AE_NO_MEMORY;
		goto error_exit;
	}

	/*
	 * Execute the "global" _INI method that may appear at the root. This
	 * support is provided for Windows compatibility (Vista+) and is not
	 * part of the ACPI specification.
	 */
	info.evaluate_info->prefix_node = acpi_gbl_root_node;
	info.evaluate_info->pathname = METHOD_NAME__INI;
	info.evaluate_info->parameters = NULL;
	info.evaluate_info->flags = ACPI_IGNORE_RETURN_VALUE;

	status = FUNC7(info.evaluate_info);
	if (FUNC6(status)) {
		info.num_INI++;
	}

	/* Walk namespace to execute all _INIs on present devices */

	status = FUNC8(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
					ACPI_UINT32_MAX, FALSE,
					acpi_ns_init_one_device, &info, NULL);

	/*
	 * Any _OSI requests should be completed by now. If the BIOS has
	 * requested any Windows OSI strings, we will always truncate
	 * I/O addresses to 16 bits -- for Windows compatibility.
	 */
	if (acpi_gbl_osi_data >= ACPI_OSI_WIN_2000) {
		acpi_gbl_truncate_io_addresses = TRUE;
	}

	FUNC4(info.evaluate_info);
	if (FUNC3(status)) {
		goto error_exit;
	}

	FUNC1((ACPI_DB_INIT,
			      "\nExecuted %hd _INI methods requiring %hd _STA executions "
			      "(examined %hd objects)\n",
			      info.num_INI, info.num_STA, info.device_count));

	FUNC9(status);

      error_exit:
	FUNC2((AE_INFO, status, "During device initialization"));
	FUNC9(status);
}