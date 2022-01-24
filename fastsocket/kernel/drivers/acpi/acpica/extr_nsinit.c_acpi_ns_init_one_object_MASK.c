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
struct TYPE_2__ {int flags; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_init_walk_info {int /*<<< orphan*/  package_init; int /*<<< orphan*/  buffer_init; int /*<<< orphan*/  field_init; int /*<<< orphan*/  op_region_init; int /*<<< orphan*/  package_count; int /*<<< orphan*/  buffer_count; int /*<<< orphan*/  field_count; int /*<<< orphan*/  op_region_count; int /*<<< orphan*/  object_count; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_object_type ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int ACPI_LV_INIT_NAMES ; 
#define  ACPI_TYPE_BUFFER 132 
#define  ACPI_TYPE_BUFFER_FIELD 131 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 130 
#define  ACPI_TYPE_PACKAGE 129 
#define  ACPI_TYPE_REGION 128 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int acpi_dbg_level ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 union acpi_operand_object* FUNC11 (struct acpi_namespace_node*) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  ns_init_one_object ; 

__attribute__((used)) static acpi_status
FUNC15(acpi_handle obj_handle,
			u32 level, void *context, void **return_value)
{
	acpi_object_type type;
	acpi_status status = AE_OK;
	struct acpi_init_walk_info *info =
	    (struct acpi_init_walk_info *)context;
	struct acpi_namespace_node *node =
	    (struct acpi_namespace_node *)obj_handle;
	union acpi_operand_object *obj_desc;

	FUNC3(ns_init_one_object);

	info->object_count++;

	/* And even then, we are only interested in a few object types */

	type = FUNC12(obj_handle);
	obj_desc = FUNC11(node);
	if (!obj_desc) {
		return (AE_OK);
	}

	/* Increment counters for object types we are looking for */

	switch (type) {
	case ACPI_TYPE_REGION:
		info->op_region_count++;
		break;

	case ACPI_TYPE_BUFFER_FIELD:
		info->field_count++;
		break;

	case ACPI_TYPE_LOCAL_BANK_FIELD:
		info->field_count++;
		break;

	case ACPI_TYPE_BUFFER:
		info->buffer_count++;
		break;

	case ACPI_TYPE_PACKAGE:
		info->package_count++;
		break;

	default:

		/* No init required, just exit now */
		return (AE_OK);
	}

	/* If the object is already initialized, nothing else to do */

	if (obj_desc->common.flags & AOPOBJ_DATA_VALID) {
		return (AE_OK);
	}

	/* Must lock the interpreter before executing AML code */

	FUNC9();

	/*
	 * Each of these types can contain executable AML code within the
	 * declaration.
	 */
	switch (type) {
	case ACPI_TYPE_REGION:

		info->op_region_init++;
		status = FUNC8(obj_desc);
		break;

	case ACPI_TYPE_BUFFER_FIELD:

		info->field_init++;
		status = FUNC6(obj_desc);
		break;

	case ACPI_TYPE_LOCAL_BANK_FIELD:

		info->field_init++;
		status = FUNC4(obj_desc);
		break;

	case ACPI_TYPE_BUFFER:

		info->buffer_init++;
		status = FUNC5(obj_desc);
		break;

	case ACPI_TYPE_PACKAGE:

		info->package_init++;
		status = FUNC7(obj_desc);
		break;

	default:
		/* No other types can get here */
		break;
	}

	if (FUNC2(status)) {
		FUNC1((AE_INFO, status,
				"Could not execute arguments for [%4.4s] (%s)",
				FUNC13(node),
				FUNC14(type)));
	}

	/*
	 * Print a dot for each object unless we are going to print the entire
	 * pathname
	 */
	if (!(acpi_dbg_level & ACPI_LV_INIT_NAMES)) {
		FUNC0((ACPI_DB_INIT, "."));
	}

	/*
	 * We ignore errors from above, and always return OK, since we don't want
	 * to abort the walk on any single error.
	 */
	FUNC10();
	return (AE_OK);
}