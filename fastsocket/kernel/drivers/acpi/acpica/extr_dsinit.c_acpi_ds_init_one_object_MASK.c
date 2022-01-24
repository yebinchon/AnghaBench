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
struct acpi_namespace_node {scalar_t__ owner_id; } ;
struct acpi_init_walk_info {scalar_t__ owner_id; int /*<<< orphan*/  device_count; int /*<<< orphan*/  method_count; int /*<<< orphan*/  op_region_count; int /*<<< orphan*/  object_count; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_object_type ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  ACPI_TYPE_DEVICE 130 
#define  ACPI_TYPE_METHOD 129 
#define  ACPI_TYPE_REGION 128 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static acpi_status
FUNC6(acpi_handle obj_handle,
			u32 level, void *context, void **return_value)
{
	struct acpi_init_walk_info *info =
	    (struct acpi_init_walk_info *)context;
	struct acpi_namespace_node *node =
	    (struct acpi_namespace_node *)obj_handle;
	acpi_object_type type;
	acpi_status status;

	FUNC2();

	/*
	 * We are only interested in NS nodes owned by the table that
	 * was just loaded
	 */
	if (node->owner_id != info->owner_id) {
		return (AE_OK);
	}

	info->object_count++;

	/* And even then, we are only interested in a few object types */

	type = FUNC4(obj_handle);

	switch (type) {
	case ACPI_TYPE_REGION:

		status = FUNC3(obj_handle);
		if (FUNC1(status)) {
			FUNC0((AE_INFO, status,
					"During Region initialization %p [%4.4s]",
					obj_handle,
					FUNC5(obj_handle)));
		}

		info->op_region_count++;
		break;

	case ACPI_TYPE_METHOD:

		info->method_count++;
		break;

	case ACPI_TYPE_DEVICE:

		info->device_count++;
		break;

	default:
		break;
	}

	/*
	 * We ignore errors from above, and always return OK, since
	 * we don't want to abort the walk on a single error.
	 */
	return (AE_OK);
}