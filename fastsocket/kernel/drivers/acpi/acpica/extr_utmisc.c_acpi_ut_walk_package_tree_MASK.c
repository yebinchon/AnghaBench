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
struct TYPE_5__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
struct TYPE_8__ {size_t index; void* this_target_obj; TYPE_3__* source_object; } ;
union acpi_generic_state {TYPE_4__ pkg; } ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  (* acpi_pkg_callback ) (int /*<<< orphan*/ ,union acpi_operand_object*,union acpi_generic_state*,void*) ;
struct TYPE_6__ {scalar_t__ count; scalar_t__* elements; } ;
struct TYPE_7__ {TYPE_2__ package; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_COPY_TYPE_PACKAGE ; 
 int /*<<< orphan*/  ACPI_COPY_TYPE_SIMPLE ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (union acpi_operand_object*) ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 union acpi_generic_state* FUNC3 (union acpi_operand_object*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_generic_state*) ; 
 union acpi_generic_state* FUNC5 (union acpi_generic_state**) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_generic_state**,union acpi_generic_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_walk_package_tree ; 

acpi_status
FUNC8(union acpi_operand_object * source_object,
			  void *target_object,
			  acpi_pkg_callback walk_callback, void *context)
{
	acpi_status status = AE_OK;
	union acpi_generic_state *state_list = NULL;
	union acpi_generic_state *state;
	u32 this_index;
	union acpi_operand_object *this_source_obj;

	FUNC1(ut_walk_package_tree);

	state = FUNC3(source_object, target_object, 0);
	if (!state) {
		FUNC7(AE_NO_MEMORY);
	}

	while (state) {

		/* Get one element of the package */

		this_index = state->pkg.index;
		this_source_obj = (union acpi_operand_object *)
		    state->pkg.source_object->package.elements[this_index];

		/*
		 * Check for:
		 * 1) An uninitialized package element.  It is completely
		 *    legal to declare a package and leave it uninitialized
		 * 2) Not an internal object - can be a namespace node instead
		 * 3) Any type other than a package.  Packages are handled in else
		 *    case below.
		 */
		if ((!this_source_obj) ||
		    (FUNC2(this_source_obj) !=
		     ACPI_DESC_TYPE_OPERAND)
		    || (this_source_obj->common.type != ACPI_TYPE_PACKAGE)) {
			status =
			    walk_callback(ACPI_COPY_TYPE_SIMPLE,
					  this_source_obj, state, context);
			if (FUNC0(status)) {
				FUNC7(status);
			}

			state->pkg.index++;
			while (state->pkg.index >=
			       state->pkg.source_object->package.count) {
				/*
				 * We've handled all of the objects at this level,  This means
				 * that we have just completed a package.  That package may
				 * have contained one or more packages itself.
				 *
				 * Delete this state and pop the previous state (package).
				 */
				FUNC4(state);
				state = FUNC5(&state_list);

				/* Finished when there are no more states */

				if (!state) {
					/*
					 * We have handled all of the objects in the top level
					 * package just add the length of the package objects
					 * and exit
					 */
					FUNC7(AE_OK);
				}

				/*
				 * Go back up a level and move the index past the just
				 * completed package object.
				 */
				state->pkg.index++;
			}
		} else {
			/* This is a subobject of type package */

			status =
			    walk_callback(ACPI_COPY_TYPE_PACKAGE,
					  this_source_obj, state, context);
			if (FUNC0(status)) {
				FUNC7(status);
			}

			/*
			 * Push the current state and create a new one
			 * The callback above returned a new target package object.
			 */
			FUNC6(&state_list, state);
			state = FUNC3(this_source_obj,
							 state->pkg.
							 this_target_obj, 0);
			if (!state) {

				/* Free any stacked Update State objects */

				while (state_list) {
					state =
					    FUNC5
					    (&state_list);
					FUNC4(state);
				}
				FUNC7(AE_NO_MEMORY);
			}
		}
	}

	/* We should never get here */

	FUNC7(AE_AML_INTERNAL);
}