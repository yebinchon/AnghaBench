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
struct TYPE_8__ {scalar_t__ space_id; union acpi_operand_object* next; } ;
struct TYPE_7__ {scalar_t__ space_id; } ;
struct TYPE_6__ {union acpi_operand_object* handler; } ;
struct TYPE_5__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_4__ address_space; TYPE_3__ region; TYPE_2__ device; TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_OPREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
 scalar_t__ ACPI_TYPE_REGION ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_CTRL_DEPTH ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 struct acpi_namespace_node* acpi_gbl_root_node ; 
 union acpi_operand_object* FUNC4 (struct acpi_namespace_node*) ; 
 struct acpi_namespace_node* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  ev_install_handler ; 

__attribute__((used)) static acpi_status
FUNC7(acpi_handle obj_handle,
			u32 level, void *context, void **return_value)
{
	union acpi_operand_object *handler_obj;
	union acpi_operand_object *next_handler_obj;
	union acpi_operand_object *obj_desc;
	struct acpi_namespace_node *node;
	acpi_status status;

	FUNC1(ev_install_handler);

	handler_obj = (union acpi_operand_object *)context;

	/* Parameter validation */

	if (!handler_obj) {
		return (AE_OK);
	}

	/* Convert and validate the device handle */

	node = FUNC5(obj_handle);
	if (!node) {
		return (AE_BAD_PARAMETER);
	}

	/*
	 * We only care about regions and objects that are allowed to have
	 * address space handlers
	 */
	if ((node->type != ACPI_TYPE_DEVICE) &&
	    (node->type != ACPI_TYPE_REGION) && (node != acpi_gbl_root_node)) {
		return (AE_OK);
	}

	/* Check for an existing internal object */

	obj_desc = FUNC4(node);
	if (!obj_desc) {

		/* No object, just exit */

		return (AE_OK);
	}

	/* Devices are handled different than regions */

	if (obj_desc->common.type == ACPI_TYPE_DEVICE) {

		/* Check if this Device already has a handler for this address space */

		next_handler_obj = obj_desc->device.handler;
		while (next_handler_obj) {

			/* Found a handler, is it for the same address space? */

			if (next_handler_obj->address_space.space_id ==
			    handler_obj->address_space.space_id) {
				FUNC0((ACPI_DB_OPREGION,
						  "Found handler for region [%s] in device %p(%p) "
						  "handler %p\n",
						  FUNC6
						  (handler_obj->address_space.
						   space_id), obj_desc,
						  next_handler_obj,
						  handler_obj));

				/*
				 * Since the object we found it on was a device, then it
				 * means that someone has already installed a handler for
				 * the branch of the namespace from this device on. Just
				 * bail out telling the walk routine to not traverse this
				 * branch. This preserves the scoping rule for handlers.
				 */
				return (AE_CTRL_DEPTH);
			}

			/* Walk the linked list of handlers attached to this device */

			next_handler_obj = next_handler_obj->address_space.next;
		}

		/*
		 * As long as the device didn't have a handler for this space we
		 * don't care about it. We just ignore it and proceed.
		 */
		return (AE_OK);
	}

	/* Object is a Region */

	if (obj_desc->region.space_id != handler_obj->address_space.space_id) {

		/* This region is for a different address space, just ignore it */

		return (AE_OK);
	}

	/*
	 * Now we have a region and it is for the handler's address space type.
	 *
	 * First disconnect region for any previous handler (if any)
	 */
	FUNC3(obj_desc, FALSE);

	/* Connect the region to the new handler */

	status = FUNC2(handler_obj, obj_desc, FALSE);
	return (status);
}