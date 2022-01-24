#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ class; int /*<<< orphan*/  object; } ;
struct TYPE_3__ {int reference_count; scalar_t__ type; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_NO_IMPLICIT_CONVERSION ; 
 scalar_t__ ACPI_REFCLASS_ARG ; 
 scalar_t__ ACPI_REFCLASS_REFOF ; 
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,struct acpi_walk_state*,struct acpi_namespace_node**) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*,int /*<<< orphan*/ ,struct acpi_walk_state*,int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC8 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_store_object_to_local ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC12(u8 type,
			      u32 index,
			      union acpi_operand_object *obj_desc,
			      struct acpi_walk_state *walk_state)
{
	acpi_status status;
	struct acpi_namespace_node *node;
	union acpi_operand_object *current_obj_desc;
	union acpi_operand_object *new_obj_desc;

	FUNC2(ds_store_object_to_local);
	FUNC0((ACPI_DB_EXEC, "Type=%2.2X Index=%d Obj=%p\n",
			  type, index, obj_desc));

	/* Parameter validation */

	if (!obj_desc) {
		FUNC11(AE_BAD_PARAMETER);
	}

	/* Get the namespace node for the arg/local */

	status = FUNC5(type, index, walk_state, &node);
	if (FUNC1(status)) {
		FUNC11(status);
	}

	current_obj_desc = FUNC8(node);
	if (current_obj_desc == obj_desc) {
		FUNC0((ACPI_DB_EXEC, "Obj=%p already installed!\n",
				  obj_desc));
		FUNC11(status);
	}

	/*
	 * If the reference count on the object is more than one, we must
	 * take a copy of the object before we store.  A reference count
	 * of exactly 1 means that the object was just created during the
	 * evaluation of an expression, and we can safely use it since it
	 * is not used anywhere else.
	 */
	new_obj_desc = obj_desc;
	if (obj_desc->common.reference_count > 1) {
		status =
		    FUNC9(obj_desc, &new_obj_desc,
						    walk_state);
		if (FUNC1(status)) {
			FUNC11(status);
		}
	}

	/*
	 * If there is an object already in this slot, we either
	 * have to delete it, or if this is an argument and there
	 * is an object reference stored there, we have to do
	 * an indirect store!
	 */
	if (current_obj_desc) {
		/*
		 * Check for an indirect store if an argument
		 * contains an object reference (stored as an Node).
		 * We don't allow this automatic dereferencing for
		 * locals, since a store to a local should overwrite
		 * anything there, including an object reference.
		 *
		 * If both Arg0 and Local0 contain ref_of (Local4):
		 *
		 * Store (1, Arg0)             - Causes indirect store to local4
		 * Store (1, Local0)           - Stores 1 in local0, overwriting
		 *                                  the reference to local4
		 * Store (1, de_refof (Local0)) - Causes indirect store to local4
		 *
		 * Weird, but true.
		 */
		if (type == ACPI_REFCLASS_ARG) {
			/*
			 * If we have a valid reference object that came from ref_of(),
			 * do the indirect store
			 */
			if ((FUNC3(current_obj_desc) ==
			     ACPI_DESC_TYPE_OPERAND)
			    && (current_obj_desc->common.type ==
				ACPI_TYPE_LOCAL_REFERENCE)
			    && (current_obj_desc->reference.class ==
				ACPI_REFCLASS_REFOF)) {
				FUNC0((ACPI_DB_EXEC,
						  "Arg (%p) is an ObjRef(Node), storing in node %p\n",
						  new_obj_desc,
						  current_obj_desc));

				/*
				 * Store this object to the Node (perform the indirect store)
				 * NOTE: No implicit conversion is performed, as per the ACPI
				 * specification rules on storing to Locals/Args.
				 */
				status =
				    FUNC7(new_obj_desc,
								 current_obj_desc->
								 reference.
								 object,
								 walk_state,
								 ACPI_NO_IMPLICIT_CONVERSION);

				/* Remove local reference if we copied the object above */

				if (new_obj_desc != obj_desc) {
					FUNC10(new_obj_desc);
				}
				FUNC11(status);
			}
		}

		/* Delete the existing object before storing the new one */

		FUNC4(type, index, walk_state);
	}

	/*
	 * Install the Obj descriptor (*new_obj_desc) into
	 * the descriptor for the Arg or Local.
	 * (increments the object reference count by one)
	 */
	status =
	    FUNC6(type, index, new_obj_desc,
					  walk_state);

	/* Remove local reference if we copied the object above */

	if (new_obj_desc != obj_desc) {
		FUNC10(new_obj_desc);
	}

	FUNC11(status);
}