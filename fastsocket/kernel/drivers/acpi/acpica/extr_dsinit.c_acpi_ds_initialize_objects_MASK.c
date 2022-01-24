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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_table_header {int /*<<< orphan*/  signature; } ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_init_walk_info {scalar_t__ op_region_count; scalar_t__ method_count; scalar_t__ device_count; scalar_t__ object_count; int /*<<< orphan*/  owner_id; int /*<<< orphan*/  table_index; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_owner_id ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  ACPI_NS_WALK_UNLOCK ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_ds_init_one_object ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_init_walk_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds_initialize_objects ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC11(u32 table_index,
			   struct acpi_namespace_node * start_node)
{
	acpi_status status;
	struct acpi_init_walk_info info;
	struct acpi_table_header *table;
	acpi_owner_id owner_id;

	FUNC4(ds_initialize_objects);

	status = FUNC7(table_index, &owner_id);
	if (FUNC3(status)) {
		FUNC10(status);
	}

	FUNC0((ACPI_DB_DISPATCH,
			  "**** Starting initialization of namespace objects ****\n"));
	FUNC1((ACPI_DB_INIT, "Parsing all Control Methods:"));

	info.method_count = 0;
	info.op_region_count = 0;
	info.object_count = 0;
	info.device_count = 0;
	info.table_index = table_index;
	info.owner_id = owner_id;

	/* Walk entire namespace from the supplied root */

	status = FUNC8(ACPI_MTX_NAMESPACE);
	if (FUNC3(status)) {
		FUNC10(status);
	}

	/*
	 * We don't use acpi_walk_namespace since we do not want to acquire
	 * the namespace reader lock.
	 */
	status =
	    FUNC6(ACPI_TYPE_ANY, start_node, ACPI_UINT32_MAX,
				   ACPI_NS_WALK_UNLOCK, acpi_ds_init_one_object,
				   &info, NULL);
	if (FUNC3(status)) {
		FUNC2((AE_INFO, status, "During WalkNamespace"));
	}
	(void)FUNC9(ACPI_MTX_NAMESPACE);

	status = FUNC5(table_index, &table);
	if (FUNC3(status)) {
		FUNC10(status);
	}

	FUNC1((ACPI_DB_INIT,
			      "\nTable [%4.4s](id %4.4X) - %hd Objects with %hd Devices %hd Methods %hd Regions\n",
			      table->signature, owner_id, info.object_count,
			      info.device_count, info.method_count,
			      info.op_region_count));

	FUNC0((ACPI_DB_DISPATCH,
			  "%hd Methods, %hd Regions\n", info.method_count,
			  info.op_region_count));

	FUNC10(AE_OK);
}