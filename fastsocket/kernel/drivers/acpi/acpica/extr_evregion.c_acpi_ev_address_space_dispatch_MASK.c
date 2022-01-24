#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int handler_flags; int /*<<< orphan*/  context; int /*<<< orphan*/  (* handler ) (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  (* setup ) (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ;} ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  space_id; scalar_t__ address; union acpi_operand_object* handler; int /*<<< orphan*/  node; } ;
struct TYPE_4__ {void* region_context; } ;
union acpi_operand_object {TYPE_3__ address_space; TYPE_2__ region; TYPE_1__ extra; } ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_integer ;
typedef  int /*<<< orphan*/  (* acpi_adr_space_setup ) (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ;
typedef  int /*<<< orphan*/  (* acpi_adr_space_handler ) (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ;

/* Variables and functions */
 int ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ; 
 int /*<<< orphan*/  ACPI_DB_OPREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_REGION_ACTIVATE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int AOPOBJ_SETUP_COMPLETE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 union acpi_operand_object* FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_address_space_dispatch ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC13(union acpi_operand_object *region_obj,
			       u32 function,
			       u32 region_offset,
			       u32 bit_width, acpi_integer * value)
{
	acpi_status status;
	acpi_adr_space_handler handler;
	acpi_adr_space_setup region_setup;
	union acpi_operand_object *handler_desc;
	union acpi_operand_object *region_obj2;
	void *region_context = NULL;

	FUNC6(ev_address_space_dispatch);

	region_obj2 = FUNC9(region_obj);
	if (!region_obj2) {
		FUNC12(AE_NOT_EXIST);
	}

	/* Ensure that there is a handler associated with this region */

	handler_desc = region_obj->region.handler;
	if (!handler_desc) {
		FUNC1((AE_INFO,
			    "No handler for Region [%4.4s] (%p) [%s]",
			    FUNC10(region_obj->region.node),
			    region_obj,
			    FUNC11(region_obj->region.
						    space_id)));

		FUNC12(AE_NOT_EXIST);
	}

	/*
	 * It may be the case that the region has never been initialized.
	 * Some types of regions require special init code
	 */
	if (!(region_obj->region.flags & AOPOBJ_SETUP_COMPLETE)) {

		/* This region has not been initialized yet, do it */

		region_setup = handler_desc->address_space.setup;
		if (!region_setup) {

			/* No initialization routine, exit with error */

			FUNC1((AE_INFO,
				    "No init routine for region(%p) [%s]",
				    region_obj,
				    FUNC11(region_obj->region.
							    space_id)));
			FUNC12(AE_NOT_EXIST);
		}

		/*
		 * We must exit the interpreter because the region setup will
		 * potentially execute control methods (for example, the _REG method
		 * for this region)
		 */
		FUNC8();

		status = region_setup(region_obj, ACPI_REGION_ACTIVATE,
				      handler_desc->address_space.context,
				      &region_context);

		/* Re-enter the interpreter */

		FUNC7();

		/* Check for failure of the Region Setup */

		if (FUNC3(status)) {
			FUNC2((AE_INFO, status,
					"During region initialization: [%s]",
					FUNC11(region_obj->
								region.
								space_id)));
			FUNC12(status);
		}

		/* Region initialization may have been completed by region_setup */

		if (!(region_obj->region.flags & AOPOBJ_SETUP_COMPLETE)) {
			region_obj->region.flags |= AOPOBJ_SETUP_COMPLETE;

			if (region_obj2->extra.region_context) {

				/* The handler for this region was already installed */

				FUNC5(region_context);
			} else {
				/*
				 * Save the returned context for use in all accesses to
				 * this particular region
				 */
				region_obj2->extra.region_context =
				    region_context;
			}
		}
	}

	/* We have everything we need, we can invoke the address space handler */

	handler = handler_desc->address_space.handler;

	FUNC0((ACPI_DB_OPREGION,
			  "Handler %p (@%p) Address %8.8X%8.8X [%s]\n",
			  &region_obj->region.handler->address_space, handler,
			  FUNC4(region_obj->region.address +
						  region_offset),
			  FUNC11(region_obj->region.
						  space_id)));

	if (!(handler_desc->address_space.handler_flags &
	      ACPI_ADDR_HANDLER_DEFAULT_INSTALLED)) {
		/*
		 * For handlers other than the default (supplied) handlers, we must
		 * exit the interpreter because the handler *might* block -- we don't
		 * know what it will do, so we can't hold the lock on the intepreter.
		 */
		FUNC8();
	}

	/* Call the handler */

	status = handler(function,
			 (region_obj->region.address + region_offset),
			 bit_width, value, handler_desc->address_space.context,
			 region_obj2->extra.region_context);

	if (FUNC3(status)) {
		FUNC2((AE_INFO, status, "Returned by Handler for [%s]",
				FUNC11(region_obj->region.
							space_id)));
	}

	if (!(handler_desc->address_space.handler_flags &
	      ACPI_ADDR_HANDLER_DEFAULT_INSTALLED)) {
		/*
		 * We just returned from a non-default handler, we must re-enter the
		 * interpreter
		 */
		FUNC7();
	}

	FUNC12(status);
}