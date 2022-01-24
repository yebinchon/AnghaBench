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
struct TYPE_6__ {int type; } ;
struct TYPE_5__ {TYPE_1__* node; int /*<<< orphan*/  target_type; union acpi_operand_object** where; int /*<<< orphan*/  value; int /*<<< orphan*/  class; } ;
union acpi_operand_object {TYPE_3__ common; TYPE_2__ reference; } ;
typedef  int /*<<< orphan*/  u8 ;
struct acpi_walk_state {int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {union acpi_operand_object* object; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  ACPI_REFCLASS_ARG 141 
#define  ACPI_REFCLASS_DEBUG 140 
#define  ACPI_REFCLASS_INDEX 139 
#define  ACPI_REFCLASS_LOCAL 138 
#define  ACPI_REFCLASS_NAME 137 
#define  ACPI_REFCLASS_REFOF 136 
#define  ACPI_REFCLASS_TABLE 135 
#define  ACPI_TYPE_BUFFER 134 
#define  ACPI_TYPE_BUFFER_FIELD 133 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 132 
#define  ACPI_TYPE_LOCAL_INDEX_FIELD 131 
#define  ACPI_TYPE_LOCAL_REFERENCE 130 
#define  ACPI_TYPE_LOCAL_REGION_FIELD 129 
#define  ACPI_TYPE_PACKAGE 128 
 int /*<<< orphan*/  ACPI_TYPE_THERMAL ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_UNINITIALIZED_ELEMENT ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AML_COPY_OP ; 
 int /*<<< orphan*/  AML_INT_METHODCALL_OP ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_walk_state*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_walk_state*,union acpi_operand_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_resolve_object_to_value ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC11(union acpi_operand_object **stack_ptr,
				struct acpi_walk_state *walk_state)
{
	acpi_status status = AE_OK;
	union acpi_operand_object *stack_desc;
	union acpi_operand_object *obj_desc = NULL;
	u8 ref_type;

	FUNC3(ex_resolve_object_to_value);

	stack_desc = *stack_ptr;

	/* This is a union acpi_operand_object    */

	switch (stack_desc->common.type) {
	case ACPI_TYPE_LOCAL_REFERENCE:

		ref_type = stack_desc->reference.class;

		switch (ref_type) {
		case ACPI_REFCLASS_LOCAL:
		case ACPI_REFCLASS_ARG:

			/*
			 * Get the local from the method's state info
			 * Note: this increments the local's object reference count
			 */
			status = FUNC6(ref_type,
							       stack_desc->
							       reference.value,
							       walk_state,
							       &obj_desc);
			if (FUNC2(status)) {
				FUNC10(status);
			}

			FUNC0((ACPI_DB_EXEC,
					  "[Arg/Local %X] ValueObj is %p\n",
					  stack_desc->reference.value,
					  obj_desc));

			/*
			 * Now we can delete the original Reference Object and
			 * replace it with the resolved value
			 */
			FUNC9(stack_desc);
			*stack_ptr = obj_desc;
			break;

		case ACPI_REFCLASS_INDEX:

			switch (stack_desc->reference.target_type) {
			case ACPI_TYPE_BUFFER_FIELD:

				/* Just return - do not dereference */
				break;

			case ACPI_TYPE_PACKAGE:

				/* If method call or copy_object - do not dereference */

				if ((walk_state->opcode ==
				     AML_INT_METHODCALL_OP)
				    || (walk_state->opcode == AML_COPY_OP)) {
					break;
				}

				/* Otherwise, dereference the package_index to a package element */

				obj_desc = *stack_desc->reference.where;
				if (obj_desc) {
					/*
					 * Valid object descriptor, copy pointer to return value
					 * (i.e., dereference the package index)
					 * Delete the ref object, increment the returned object
					 */
					FUNC9(stack_desc);
					FUNC8(obj_desc);
					*stack_ptr = obj_desc;
				} else {
					/*
					 * A NULL object descriptor means an uninitialized element of
					 * the package, can't dereference it
					 */
					FUNC1((AE_INFO,
						    "Attempt to dereference an Index to NULL package element Idx=%p",
						    stack_desc));
					status = AE_AML_UNINITIALIZED_ELEMENT;
				}
				break;

			default:

				/* Invalid reference object */

				FUNC1((AE_INFO,
					    "Unknown TargetType %X in Index/Reference object %p",
					    stack_desc->reference.target_type,
					    stack_desc));
				status = AE_AML_INTERNAL;
				break;
			}
			break;

		case ACPI_REFCLASS_REFOF:
		case ACPI_REFCLASS_DEBUG:
		case ACPI_REFCLASS_TABLE:

			/* Just leave the object as-is, do not dereference */

			break;

		case ACPI_REFCLASS_NAME:	/* Reference to a named object */

			/* Dereference the name */

			if ((stack_desc->reference.node->type ==
			     ACPI_TYPE_DEVICE)
			    || (stack_desc->reference.node->type ==
				ACPI_TYPE_THERMAL)) {

				/* These node types do not have 'real' subobjects */

				*stack_ptr = (void *)stack_desc->reference.node;
			} else {
				/* Get the object pointed to by the namespace node */

				*stack_ptr =
				    (stack_desc->reference.node)->object;
				FUNC8(*stack_ptr);
			}

			FUNC9(stack_desc);
			break;

		default:

			FUNC1((AE_INFO,
				    "Unknown Reference type %X in %p", ref_type,
				    stack_desc));
			status = AE_AML_INTERNAL;
			break;
		}
		break;

	case ACPI_TYPE_BUFFER:

		status = FUNC4(stack_desc);
		break;

	case ACPI_TYPE_PACKAGE:

		status = FUNC5(stack_desc);
		break;

	case ACPI_TYPE_BUFFER_FIELD:
	case ACPI_TYPE_LOCAL_REGION_FIELD:
	case ACPI_TYPE_LOCAL_BANK_FIELD:
	case ACPI_TYPE_LOCAL_INDEX_FIELD:

		FUNC0((ACPI_DB_EXEC,
				  "FieldRead SourceDesc=%p Type=%X\n",
				  stack_desc, stack_desc->common.type));

		status =
		    FUNC7(walk_state, stack_desc,
						 &obj_desc);

		/* Remove a reference to the original operand, then override */

		FUNC9(*stack_ptr);
		*stack_ptr = (void *)obj_desc;
		break;

	default:
		break;
	}

	FUNC10(status);
}