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
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int class; scalar_t__ target_type; int /*<<< orphan*/  value; union acpi_operand_object** where; union acpi_operand_object* node; union acpi_operand_object* object; } ;
union acpi_operand_object {scalar_t__ type; TYPE_2__ common; TYPE_1__ reference; } ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {scalar_t__ type; TYPE_2__ common; TYPE_1__ reference; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_object_type ;

/* Variables and functions */
#define  ACPI_DESC_TYPE_NAMED 140 
#define  ACPI_DESC_TYPE_OPERAND 139 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (struct acpi_walk_state*,union acpi_operand_object*,scalar_t__*,union acpi_operand_object**)) ; 
 int const FUNC3 (union acpi_operand_object*) ; 
#define  ACPI_REFCLASS_ARG 138 
#define  ACPI_REFCLASS_DEBUG 137 
#define  ACPI_REFCLASS_INDEX 136 
#define  ACPI_REFCLASS_LOCAL 135 
#define  ACPI_REFCLASS_NAME 134 
#define  ACPI_REFCLASS_REFOF 133 
#define  ACPI_REFCLASS_TABLE 132 
 scalar_t__ ACPI_TYPE_ANY ; 
 scalar_t__ ACPI_TYPE_DDB_HANDLE ; 
 scalar_t__ ACPI_TYPE_DEBUG_OBJECT ; 
 scalar_t__ ACPI_TYPE_FIELD_UNIT ; 
 scalar_t__ ACPI_TYPE_LOCAL_ALIAS ; 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 131 
#define  ACPI_TYPE_LOCAL_INDEX_FIELD 130 
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ; 
#define  ACPI_TYPE_LOCAL_REGION_FIELD 129 
#define  ACPI_TYPE_LOCAL_SCOPE 128 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_AML_CIRCULAR_REFERENCE ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (int const,int /*<<< orphan*/ ,struct acpi_walk_state*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC5 (int const,int /*<<< orphan*/ ,struct acpi_walk_state*,union acpi_operand_object**) ; 
 union acpi_operand_object* FUNC6 (union acpi_operand_object*) ; 
 scalar_t__ FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC11(struct acpi_walk_state *walk_state,
			 union acpi_operand_object *operand,
			 acpi_object_type * return_type,
			 union acpi_operand_object **return_desc)
{
	union acpi_operand_object *obj_desc = (void *)operand;
	struct acpi_namespace_node *node;
	acpi_object_type type;
	acpi_status status;

	FUNC2(acpi_ex_resolve_multiple);

	/* Operand can be either a namespace node or an operand descriptor */

	switch (FUNC3(obj_desc)) {
	case ACPI_DESC_TYPE_OPERAND:
		type = obj_desc->common.type;
		break;

	case ACPI_DESC_TYPE_NAMED:
		type = ((struct acpi_namespace_node *)obj_desc)->type;
		obj_desc =
		    FUNC6((struct acpi_namespace_node *)
						obj_desc);

		/* If we had an Alias node, use the attached object for type info */

		if (type == ACPI_TYPE_LOCAL_ALIAS) {
			type = ((struct acpi_namespace_node *)obj_desc)->type;
			obj_desc =
			    FUNC6((struct
							 acpi_namespace_node *)
							obj_desc);
		}
		break;

	default:
		FUNC10(AE_AML_OPERAND_TYPE);
	}

	/* If type is anything other than a reference, we are done */

	if (type != ACPI_TYPE_LOCAL_REFERENCE) {
		goto exit;
	}

	/*
	 * For reference objects created via the ref_of, Index, or Load/load_table
	 * operators, we need to get to the base object (as per the ACPI
	 * specification of the object_type and size_of operators). This means
	 * traversing the list of possibly many nested references.
	 */
	while (obj_desc->common.type == ACPI_TYPE_LOCAL_REFERENCE) {
		switch (obj_desc->reference.class) {
		case ACPI_REFCLASS_REFOF:
		case ACPI_REFCLASS_NAME:

			/* Dereference the reference pointer */

			if (obj_desc->reference.class == ACPI_REFCLASS_REFOF) {
				node = obj_desc->reference.object;
			} else {	/* AML_INT_NAMEPATH_OP */

				node = obj_desc->reference.node;
			}

			/* All "References" point to a NS node */

			if (FUNC3(node) !=
			    ACPI_DESC_TYPE_NAMED) {
				FUNC0((AE_INFO, "Not a NS node %p [%s]",
					    node,
					    FUNC8(node)));
				FUNC10(AE_AML_INTERNAL);
			}

			/* Get the attached object */

			obj_desc = FUNC6(node);
			if (!obj_desc) {

				/* No object, use the NS node type */

				type = FUNC7(node);
				goto exit;
			}

			/* Check for circular references */

			if (obj_desc == operand) {
				FUNC10(AE_AML_CIRCULAR_REFERENCE);
			}
			break;

		case ACPI_REFCLASS_INDEX:

			/* Get the type of this reference (index into another object) */

			type = obj_desc->reference.target_type;
			if (type != ACPI_TYPE_PACKAGE) {
				goto exit;
			}

			/*
			 * The main object is a package, we want to get the type
			 * of the individual package element that is referenced by
			 * the index.
			 *
			 * This could of course in turn be another reference object.
			 */
			obj_desc = *(obj_desc->reference.where);
			if (!obj_desc) {

				/* NULL package elements are allowed */

				type = 0;	/* Uninitialized */
				goto exit;
			}
			break;

		case ACPI_REFCLASS_TABLE:

			type = ACPI_TYPE_DDB_HANDLE;
			goto exit;

		case ACPI_REFCLASS_LOCAL:
		case ACPI_REFCLASS_ARG:

			if (return_desc) {
				status =
				    FUNC5(obj_desc->
								  reference.
								  class,
								  obj_desc->
								  reference.
								  value,
								  walk_state,
								  &obj_desc);
				if (FUNC1(status)) {
					FUNC10(status);
				}
				FUNC9(obj_desc);
			} else {
				status =
				    FUNC4(obj_desc->
								 reference.
								 class,
								 obj_desc->
								 reference.
								 value,
								 walk_state,
								 &node);
				if (FUNC1(status)) {
					FUNC10(status);
				}

				obj_desc = FUNC6(node);
				if (!obj_desc) {
					type = ACPI_TYPE_ANY;
					goto exit;
				}
			}
			break;

		case ACPI_REFCLASS_DEBUG:

			/* The Debug Object is of type "DebugObject" */

			type = ACPI_TYPE_DEBUG_OBJECT;
			goto exit;

		default:

			FUNC0((AE_INFO,
				    "Unknown Reference Class %2.2X",
				    obj_desc->reference.class));
			FUNC10(AE_AML_INTERNAL);
		}
	}

	/*
	 * Now we are guaranteed to have an object that has not been created
	 * via the ref_of or Index operators.
	 */
	type = obj_desc->common.type;

      exit:
	/* Convert internal types to external types */

	switch (type) {
	case ACPI_TYPE_LOCAL_REGION_FIELD:
	case ACPI_TYPE_LOCAL_BANK_FIELD:
	case ACPI_TYPE_LOCAL_INDEX_FIELD:

		type = ACPI_TYPE_FIELD_UNIT;
		break;

	case ACPI_TYPE_LOCAL_SCOPE:

		/* Per ACPI Specification, Scope is untyped */

		type = ACPI_TYPE_ANY;
		break;

	default:
		/* No change to Type required */
		break;
	}

	*return_type = type;
	if (return_desc) {
		*return_desc = obj_desc;
	}
	FUNC10(AE_OK);
}