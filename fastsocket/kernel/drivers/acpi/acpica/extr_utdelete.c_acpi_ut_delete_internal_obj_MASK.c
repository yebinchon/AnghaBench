#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  region_context; } ;
struct TYPE_14__ {int handler_flags; int /*<<< orphan*/  context; int /*<<< orphan*/  (* setup ) (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;union acpi_operand_object* region_list; union acpi_operand_object* next; } ;
struct TYPE_13__ {union acpi_operand_object* next; union acpi_operand_object* handler; int /*<<< orphan*/  length; int /*<<< orphan*/  address; int /*<<< orphan*/  space_id; } ;
struct TYPE_24__ {union acpi_operand_object* mutex; } ;
struct TYPE_23__ {int /*<<< orphan*/  os_mutex; } ;
struct TYPE_22__ {int /*<<< orphan*/ * os_semaphore; } ;
struct TYPE_21__ {union acpi_operand_object* handler; } ;
struct TYPE_20__ {int /*<<< orphan*/  gpe_block; } ;
struct TYPE_19__ {void* elements; int /*<<< orphan*/  count; } ;
struct TYPE_18__ {void* pointer; } ;
struct TYPE_17__ {int type; int flags; } ;
struct TYPE_16__ {void* pointer; } ;
union acpi_operand_object {TYPE_12__ extra; TYPE_11__ address_space; TYPE_10__ region; TYPE_9__ method; TYPE_8__ mutex; TYPE_7__ event; TYPE_6__ common_notify; TYPE_5__ device; TYPE_4__ package; TYPE_3__ buffer; TYPE_2__ common; TYPE_1__ string; } ;
typedef  int /*<<< orphan*/  acpi_size ;

/* Variables and functions */
 int ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ; 
 int /*<<< orphan*/  ACPI_DB_ALLOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_REGION_DEACTIVATE ; 
#define  ACPI_TYPE_BUFFER 139 
#define  ACPI_TYPE_BUFFER_FIELD 138 
#define  ACPI_TYPE_DEVICE 137 
#define  ACPI_TYPE_EVENT 136 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 135 
#define  ACPI_TYPE_METHOD 134 
#define  ACPI_TYPE_MUTEX 133 
#define  ACPI_TYPE_PACKAGE 132 
#define  ACPI_TYPE_PROCESSOR 131 
#define  ACPI_TYPE_REGION 130 
#define  ACPI_TYPE_STRING 129 
#define  ACPI_TYPE_THERMAL 128 
 int AOPOBJ_STATIC_POINTER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 union acpi_operand_object* acpi_gbl_global_lock_mutex ; 
 int /*<<< orphan*/ * acpi_gbl_global_lock_semaphore ; 
 union acpi_operand_object* FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC11 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  FUNC12 (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ut_delete_internal_obj ; 

__attribute__((used)) static void FUNC13(union acpi_operand_object *object)
{
	void *obj_pointer = NULL;
	union acpi_operand_object *handler_desc;
	union acpi_operand_object *second_desc;
	union acpi_operand_object *next_desc;
	union acpi_operand_object **last_obj_ptr;

	FUNC2(ut_delete_internal_obj, object);

	if (!object) {
		return_VOID;
	}

	/*
	 * Must delete or free any pointers within the object that are not
	 * actual ACPI objects (for example, a raw buffer pointer).
	 */
	switch (object->common.type) {
	case ACPI_TYPE_STRING:

		FUNC0((ACPI_DB_ALLOCATIONS,
				  "**** String %p, ptr %p\n", object,
				  object->string.pointer));

		/* Free the actual string buffer */

		if (!(object->common.flags & AOPOBJ_STATIC_POINTER)) {

			/* But only if it is NOT a pointer into an ACPI table */

			obj_pointer = object->string.pointer;
		}
		break;

	case ACPI_TYPE_BUFFER:

		FUNC0((ACPI_DB_ALLOCATIONS,
				  "**** Buffer %p, ptr %p\n", object,
				  object->buffer.pointer));

		/* Free the actual buffer */

		if (!(object->common.flags & AOPOBJ_STATIC_POINTER)) {

			/* But only if it is NOT a pointer into an ACPI table */

			obj_pointer = object->buffer.pointer;
		}
		break;

	case ACPI_TYPE_PACKAGE:

		FUNC0((ACPI_DB_ALLOCATIONS,
				  " **** Package of count %X\n",
				  object->package.count));

		/*
		 * Elements of the package are not handled here, they are deleted
		 * separately
		 */

		/* Free the (variable length) element pointer array */

		obj_pointer = object->package.elements;
		break;

		/*
		 * These objects have a possible list of notify handlers.
		 * Device object also may have a GPE block.
		 */
	case ACPI_TYPE_DEVICE:

		if (object->device.gpe_block) {
			(void)FUNC3(object->device.
						       gpe_block);
		}

		/*lint -fallthrough */

	case ACPI_TYPE_PROCESSOR:
	case ACPI_TYPE_THERMAL:

		/* Walk the notify handler list for this object */

		handler_desc = object->common_notify.handler;
		while (handler_desc) {
			next_desc = handler_desc->address_space.next;
			FUNC11(handler_desc);
			handler_desc = next_desc;
		}
		break;

	case ACPI_TYPE_MUTEX:

		FUNC0((ACPI_DB_ALLOCATIONS,
				  "***** Mutex %p, OS Mutex %p\n",
				  object, object->mutex.os_mutex));

		if (object == acpi_gbl_global_lock_mutex) {

			/* Global Lock has extra semaphore */

			(void)
			    FUNC7
			    (acpi_gbl_global_lock_semaphore);
			acpi_gbl_global_lock_semaphore = NULL;

			FUNC6(object->mutex.os_mutex);
			acpi_gbl_global_lock_mutex = NULL;
		} else {
			FUNC4(object);
			FUNC6(object->mutex.os_mutex);
		}
		break;

	case ACPI_TYPE_EVENT:

		FUNC0(*(ACPI_DB_ALLOCATIONS,
				  "***** Event %p, OS Semaphore %p\n",
				  object, object->event.os_semaphore));

		(void)FUNC7(object->event.os_semaphore);
		object->event.os_semaphore = NULL;
		break;

	case ACPI_TYPE_METHOD:

		FUNC0((ACPI_DB_ALLOCATIONS,
				  "***** Method %p\n", object));

		/* Delete the method mutex if it exists */

		if (object->method.mutex) {
			FUNC6(object->method.mutex->mutex.
					     os_mutex);
			FUNC9(object->method.mutex);
			object->method.mutex = NULL;
		}
		break;

	case ACPI_TYPE_REGION:

		FUNC0((ACPI_DB_ALLOCATIONS,
				  "***** Region %p\n", object));

		/* Invalidate the region address/length via the host OS */

		FUNC8(object->region.space_id,
					  object->region.address,
					  (acpi_size) object->region.length);

		second_desc = FUNC5(object);
		if (second_desc) {
			/*
			 * Free the region_context if and only if the handler is one of the
			 * default handlers -- and therefore, we created the context object
			 * locally, it was not created by an external caller.
			 */
			handler_desc = object->region.handler;
			if (handler_desc) {
				next_desc =
				    handler_desc->address_space.region_list;
				last_obj_ptr =
				    &handler_desc->address_space.region_list;

				/* Remove the region object from the handler's list */

				while (next_desc) {
					if (next_desc == object) {
						*last_obj_ptr =
						    next_desc->region.next;
						break;
					}

					/* Walk the linked list of handler */

					last_obj_ptr = &next_desc->region.next;
					next_desc = next_desc->region.next;
				}

				if (handler_desc->address_space.handler_flags &
				    ACPI_ADDR_HANDLER_DEFAULT_INSTALLED) {

					/* Deactivate region and free region context */

					if (handler_desc->address_space.setup) {
						(void)handler_desc->
						    address_space.setup(object,
									ACPI_REGION_DEACTIVATE,
									handler_desc->
									address_space.
									context,
									&second_desc->
									extra.
									region_context);
					}
				}

				FUNC11(handler_desc);
			}

			/* Now we can free the Extra object */

			FUNC9(second_desc);
		}
		break;

	case ACPI_TYPE_BUFFER_FIELD:

		FUNC0((ACPI_DB_ALLOCATIONS,
				  "***** Buffer Field %p\n", object));

		second_desc = FUNC5(object);
		if (second_desc) {
			FUNC9(second_desc);
		}
		break;

	case ACPI_TYPE_LOCAL_BANK_FIELD:

		FUNC0((ACPI_DB_ALLOCATIONS,
				  "***** Bank Field %p\n", object));

		second_desc = FUNC5(object);
		if (second_desc) {
			FUNC9(second_desc);
		}
		break;

	default:
		break;
	}

	/* Free any allocated memory (pointer within the object) found above */

	if (obj_pointer) {
		FUNC0((ACPI_DB_ALLOCATIONS,
				  "Deleting Object Subptr %p\n", obj_pointer));
		FUNC1(obj_pointer);
	}

	/* Now the object can be safely deleted */

	FUNC0((ACPI_DB_ALLOCATIONS, "Deleting Object %p [%s]\n",
			  object, FUNC10(object)));

	FUNC9(object);
	return_VOID;
}