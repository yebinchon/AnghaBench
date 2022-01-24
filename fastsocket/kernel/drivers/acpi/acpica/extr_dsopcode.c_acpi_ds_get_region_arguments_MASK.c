#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int flags; scalar_t__ length; int /*<<< orphan*/  address; int /*<<< orphan*/  space_id; struct acpi_namespace_node* node; } ;
struct TYPE_5__ {int /*<<< orphan*/  aml_start; int /*<<< orphan*/  aml_length; } ;
union acpi_operand_object {TYPE_4__ common; TYPE_2__ region; TYPE_1__ extra; } ;
struct TYPE_7__ {int /*<<< orphan*/  ascii; } ;
struct acpi_namespace_node {TYPE_3__ name; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_REGION ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  AOPOBJ_INVALID ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  ds_get_region_arguments ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status FUNC11(union acpi_operand_object *obj_desc)
{
	struct acpi_namespace_node *node;
	acpi_status status;
	union acpi_operand_object *extra_desc;

	FUNC4(ds_get_region_arguments, obj_desc);

	if (obj_desc->region.flags & AOPOBJ_DATA_VALID) {
		FUNC10(AE_OK);
	}

	extra_desc = FUNC6(obj_desc);
	if (!extra_desc) {
		FUNC10(AE_NOT_EXIST);
	}

	/* Get the Region node */

	node = obj_desc->region.node;

	FUNC0(FUNC8
			(ACPI_TYPE_REGION, node, NULL));

	FUNC1((ACPI_DB_EXEC, "[%4.4s] OpRegion Arg Init at AML %p\n",
			  FUNC9(node),
			  extra_desc->extra.aml_start));

	/* Execute the argument AML */

	status = FUNC5(node, node->parent,
					   extra_desc->extra.aml_length,
					   extra_desc->extra.aml_start);
	if (FUNC3(status)) {
		FUNC10(status);
	}

	/* Validate the region address/length via the host OS */

	status = FUNC7(obj_desc->region.space_id,
					  obj_desc->region.address,
					  (acpi_size) obj_desc->region.length,
					  FUNC9(node));

	if (FUNC3(status)) {
		/*
		 * Invalid address/length. We will emit an error message and mark
		 * the region as invalid, so that it will cause an additional error if
		 * it is ever used. Then return AE_OK.
		 */
		FUNC2((AE_INFO, status,
				"During address validation of OpRegion [%4.4s]",
				node->name.ascii));
		obj_desc->common.flags |= AOPOBJ_INVALID;
		status = AE_OK;
	}

	FUNC10(status);
}