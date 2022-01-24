#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ space_id; union acpi_operand_object* next; } ;
struct TYPE_15__ {union acpi_operand_object* handler; } ;
struct TYPE_14__ {union acpi_operand_object* handler; } ;
struct TYPE_13__ {union acpi_operand_object* handler; } ;
struct TYPE_12__ {struct acpi_namespace_node* method_REG; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {scalar_t__ space_id; int /*<<< orphan*/ * handler; TYPE_1__* node; } ;
union acpi_operand_object {TYPE_8__ address_space; TYPE_7__ thermal_zone; TYPE_6__ processor; TYPE_5__ device; TYPE_4__ extra; TYPE_3__ common; TYPE_2__ region; } ;
typedef  int /*<<< orphan*/  u8 ;
struct acpi_namespace_node {int type; struct acpi_namespace_node* parent; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_name ;
typedef  scalar_t__ acpi_adr_space_type ;
struct TYPE_9__ {struct acpi_namespace_node* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_OPREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_DEVICE 130 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
#define  ACPI_TYPE_PROCESSOR 129 
#define  ACPI_TYPE_THERMAL 128 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_OBJECT_INITIALIZED ; 
 int AOPOBJ_SETUP_COMPLETE ; 
 scalar_t__ METHOD_NAME__REG ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*,int) ; 
 union acpi_operand_object* FUNC6 (struct acpi_namespace_node*) ; 
 union acpi_operand_object* FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ ,struct acpi_namespace_node**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_initialize_region ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC13(union acpi_operand_object *region_obj,
			  u8 acpi_ns_locked)
{
	union acpi_operand_object *handler_obj;
	union acpi_operand_object *obj_desc;
	acpi_adr_space_type space_id;
	struct acpi_namespace_node *node;
	acpi_status status;
	struct acpi_namespace_node *method_node;
	acpi_name *reg_name_ptr = (acpi_name *) METHOD_NAME__REG;
	union acpi_operand_object *region_obj2;

	FUNC2(ev_initialize_region, acpi_ns_locked);

	if (!region_obj) {
		FUNC12(AE_BAD_PARAMETER);
	}

	if (region_obj->common.flags & AOPOBJ_OBJECT_INITIALIZED) {
		FUNC12(AE_OK);
	}

	region_obj2 = FUNC7(region_obj);
	if (!region_obj2) {
		FUNC12(AE_NOT_EXIST);
	}

	node = region_obj->region.node->parent;
	space_id = region_obj->region.space_id;

	/* Setup defaults */

	region_obj->region.handler = NULL;
	region_obj2->extra.method_REG = NULL;
	region_obj->common.flags &= ~(AOPOBJ_SETUP_COMPLETE);
	region_obj->common.flags |= AOPOBJ_OBJECT_INITIALIZED;

	/* Find any "_REG" method associated with this region definition */

	status =
	    FUNC8(*reg_name_ptr, node, ACPI_TYPE_METHOD,
				     &method_node);
	if (FUNC3(status)) {
		/*
		 * The _REG method is optional and there can be only one per region
		 * definition. This will be executed when the handler is attached
		 * or removed
		 */
		region_obj2->extra.method_REG = method_node;
	}

	/*
	 * The following loop depends upon the root Node having no parent
	 * ie: acpi_gbl_root_node->parent_entry being set to NULL
	 */
	while (node) {

		/* Check to see if a handler exists */

		handler_obj = NULL;
		obj_desc = FUNC6(node);
		if (obj_desc) {

			/* Can only be a handler if the object exists */

			switch (node->type) {
			case ACPI_TYPE_DEVICE:

				handler_obj = obj_desc->device.handler;
				break;

			case ACPI_TYPE_PROCESSOR:

				handler_obj = obj_desc->processor.handler;
				break;

			case ACPI_TYPE_THERMAL:

				handler_obj = obj_desc->thermal_zone.handler;
				break;

			default:
				/* Ignore other objects */
				break;
			}

			while (handler_obj) {

				/* Is this handler of the correct type? */

				if (handler_obj->address_space.space_id ==
				    space_id) {

					/* Found correct handler */

					FUNC0((ACPI_DB_OPREGION,
							  "Found handler %p for region %p in obj %p\n",
							  handler_obj,
							  region_obj,
							  obj_desc));

					status =
					    FUNC4(handler_obj,
								  region_obj,
								  acpi_ns_locked);

					/*
					 * Tell all users that this region is usable by
					 * running the _REG method
					 */
					if (acpi_ns_locked) {
						status =
						    FUNC11
						    (ACPI_MTX_NAMESPACE);
						if (FUNC1(status)) {
							FUNC12
							    (status);
						}
					}

					status =
					    FUNC5
					    (region_obj, 1);

					if (acpi_ns_locked) {
						status =
						    FUNC9
						    (ACPI_MTX_NAMESPACE);
						if (FUNC1(status)) {
							FUNC12
							    (status);
						}
					}

					FUNC12(AE_OK);
				}

				/* Try next handler in the list */

				handler_obj = handler_obj->address_space.next;
			}
		}

		/* This node does not have the handler we need; Pop up one level */

		node = node->parent;
	}

	/* If we get here, there is no handler for this region */

	FUNC0((ACPI_DB_OPREGION,
			  "No handler for RegionType %s(%X) (RegionObj %p)\n",
			  FUNC10(space_id), space_id,
			  region_obj));

	FUNC12(AE_NOT_EXIST);
}