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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u8 ;
struct acpi_walk_state {scalar_t__ opcode; int /*<<< orphan*/  result_obj; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int ACPI_TYPE_ANY ; 
#define  ACPI_TYPE_BUFFER 134 
#define  ACPI_TYPE_BUFFER_FIELD 133 
#define  ACPI_TYPE_INTEGER 132 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 131 
#define  ACPI_TYPE_LOCAL_INDEX_FIELD 130 
#define  ACPI_TYPE_LOCAL_REGION_FIELD 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ AML_COPY_OP ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object**,int,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*,union acpi_operand_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_namespace_node*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC7 (struct acpi_namespace_node*) ; 
 int FUNC8 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  ex_store_object_to_node ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC12(union acpi_operand_object *source_desc,
			     struct acpi_namespace_node *node,
			     struct acpi_walk_state *walk_state,
			     u8 implicit_conversion)
{
	acpi_status status = AE_OK;
	union acpi_operand_object *target_desc;
	union acpi_operand_object *new_desc;
	acpi_object_type target_type;

	FUNC2(ex_store_object_to_node, source_desc);

	/* Get current type of the node, and object attached to Node */

	target_type = FUNC8(node);
	target_desc = FUNC7(node);

	FUNC0((ACPI_DB_EXEC, "Storing %p(%s) into node %p(%s)\n",
			  source_desc,
			  FUNC9(source_desc), node,
			  FUNC10(target_type)));

	/*
	 * Resolve the source object to an actual value
	 * (If it is a reference object)
	 */
	status = FUNC3(&source_desc, target_type, walk_state);
	if (FUNC1(status)) {
		FUNC11(status);
	}

	/* If no implicit conversion, drop into the default case below */

	if ((!implicit_conversion) ||
	    ((walk_state->opcode == AML_COPY_OP) &&
	     (target_type != ACPI_TYPE_LOCAL_REGION_FIELD) &&
	     (target_type != ACPI_TYPE_LOCAL_BANK_FIELD) &&
	     (target_type != ACPI_TYPE_LOCAL_INDEX_FIELD))) {
		/*
		 * Force execution of default (no implicit conversion). Note:
		 * copy_object does not perform an implicit conversion, as per the ACPI
		 * spec -- except in case of region/bank/index fields -- because these
		 * objects must retain their original type permanently.
		 */
		target_type = ACPI_TYPE_ANY;
	}

	/* Do the actual store operation */

	switch (target_type) {
	case ACPI_TYPE_BUFFER_FIELD:
	case ACPI_TYPE_LOCAL_REGION_FIELD:
	case ACPI_TYPE_LOCAL_BANK_FIELD:
	case ACPI_TYPE_LOCAL_INDEX_FIELD:

		/* For fields, copy the source data to the target field. */

		status = FUNC5(source_desc, target_desc,
						     &walk_state->result_obj);
		break;

	case ACPI_TYPE_INTEGER:
	case ACPI_TYPE_STRING:
	case ACPI_TYPE_BUFFER:

		/*
		 * These target types are all of type Integer/String/Buffer, and
		 * therefore support implicit conversion before the store.
		 *
		 * Copy and/or convert the source object to a new target object
		 */
		status =
		    FUNC4(source_desc, target_desc,
						   &new_desc, walk_state);
		if (FUNC1(status)) {
			FUNC11(status);
		}

		if (new_desc != target_desc) {
			/*
			 * Store the new new_desc as the new value of the Name, and set
			 * the Name's type to that of the value being stored in it.
			 * source_desc reference count is incremented by attach_object.
			 *
			 * Note: This may change the type of the node if an explicit store
			 * has been performed such that the node/object type has been
			 * changed.
			 */
			status =
			    FUNC6(node, new_desc,
						  new_desc->common.type);

			FUNC0((ACPI_DB_EXEC,
					  "Store %s into %s via Convert/Attach\n",
					  FUNC9
					  (source_desc),
					  FUNC9
					  (new_desc)));
		}
		break;

	default:

		FUNC0((ACPI_DB_EXEC,
				  "Storing %s (%p) directly into node (%p) with no implicit conversion\n",
				  FUNC9(source_desc),
				  source_desc, node));

		/* No conversions for all other types.  Just attach the source object */

		status = FUNC6(node, source_desc,
					       source_desc->common.type);
		break;
	}

	FUNC11(status);
}