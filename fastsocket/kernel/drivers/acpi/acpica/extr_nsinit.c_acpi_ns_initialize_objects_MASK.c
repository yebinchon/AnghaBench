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
struct acpi_init_walk_info {int /*<<< orphan*/  op_region_count; int /*<<< orphan*/  method_count; int /*<<< orphan*/  object_count; int /*<<< orphan*/  package_count; int /*<<< orphan*/  package_init; int /*<<< orphan*/  buffer_count; int /*<<< orphan*/  buffer_init; int /*<<< orphan*/  field_count; int /*<<< orphan*/  field_init; int /*<<< orphan*/  op_region_init; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_init_walk_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_ns_init_one_object ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_init_walk_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ns_initialize_objects ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status FUNC8(void)
{
	acpi_status status;
	struct acpi_init_walk_info info;

	FUNC4(ns_initialize_objects);

	FUNC0((ACPI_DB_DISPATCH,
			  "**** Starting initialization of namespace objects ****\n"));
	FUNC1((ACPI_DB_INIT,
			      "Completing Region/Field/Buffer/Package initialization:"));

	/* Set all init info to zero */

	FUNC5(&info, 0, sizeof(struct acpi_init_walk_info));

	/* Walk entire namespace from the supplied root */

	status = FUNC6(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
				     ACPI_UINT32_MAX, acpi_ns_init_one_object,
				     &info, NULL);
	if (FUNC3(status)) {
		FUNC2((AE_INFO, status, "During WalkNamespace"));
	}

	FUNC1((ACPI_DB_INIT,
			      "\nInitialized %hd/%hd Regions %hd/%hd Fields %hd/%hd "
			      "Buffers %hd/%hd Packages (%hd nodes)\n",
			      info.op_region_init, info.op_region_count,
			      info.field_init, info.field_count,
			      info.buffer_init, info.buffer_count,
			      info.package_init, info.package_count,
			      info.object_count));

	FUNC0((ACPI_DB_DISPATCH,
			  "%hd Control Methods found\n", info.method_count));
	FUNC0((ACPI_DB_DISPATCH,
			  "%hd Op Regions found\n", info.op_region_count));

	FUNC7(AE_OK);
}