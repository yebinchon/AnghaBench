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
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int const class; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ reference; } ;
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct acpi_walk_state {int /*<<< orphan*/  num_operands; int /*<<< orphan*/  operands; } ;
struct acpi_opcode_info {scalar_t__ class; scalar_t__ runtime_args; int /*<<< orphan*/  name; } ;
struct acpi_namespace_node {int type; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_DESC_TYPE_NAMED 169 
#define  ACPI_DESC_TYPE_OPERAND 168 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_IMPLICIT_CONVERT_HEX ; 
#define  ACPI_REFCLASS_ARG 167 
#define  ACPI_REFCLASS_DEBUG 166 
#define  ACPI_REFCLASS_INDEX 165 
#define  ACPI_REFCLASS_LOCAL 164 
#define  ACPI_REFCLASS_NAME 163 
#define  ACPI_REFCLASS_REFOF 162 
#define  ACPI_REFCLASS_TABLE 161 
 int ACPI_TYPE_ANY ; 
#define  ACPI_TYPE_BUFFER 160 
#define  ACPI_TYPE_BUFFER_FIELD 159 
#define  ACPI_TYPE_DDB_HANDLE 158 
 int ACPI_TYPE_EVENT ; 
#define  ACPI_TYPE_INTEGER 157 
 int ACPI_TYPE_LOCAL_ALIAS ; 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 156 
#define  ACPI_TYPE_LOCAL_INDEX_FIELD 155 
#define  ACPI_TYPE_LOCAL_REFERENCE 154 
#define  ACPI_TYPE_LOCAL_REGION_FIELD 153 
 int ACPI_TYPE_MUTEX ; 
#define  ACPI_TYPE_PACKAGE 152 
#define  ACPI_TYPE_REGION 151 
#define  ACPI_TYPE_STRING 150 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 scalar_t__ AML_CLASS_UNKNOWN ; 
 int /*<<< orphan*/  AML_DEBUG_OP ; 
 int /*<<< orphan*/  AML_STORE_OP ; 
#define  ARGI_ANYTYPE 149 
#define  ARGI_BUFFER 148 
#define  ARGI_BUFFER_OR_STRING 147 
#define  ARGI_COMPLEXOBJ 146 
#define  ARGI_COMPUTEDATA 145 
#define  ARGI_DATAOBJECT 144 
#define  ARGI_DATAREFOBJ 143 
#define  ARGI_DDBHANDLE 142 
#define  ARGI_DEVICE_REF 141 
#define  ARGI_EVENT 140 
#define  ARGI_FIXED_TARGET 139 
#define  ARGI_INTEGER 138 
#define  ARGI_INTEGER_REF 137 
 scalar_t__ ARGI_INVALID_OPCODE ; 
#define  ARGI_MUTEX 136 
#define  ARGI_OBJECT_REF 135 
#define  ARGI_PACKAGE 134 
#define  ARGI_REFERENCE 133 
#define  ARGI_REF_OR_STRING 132 
#define  ARGI_REGION_OR_BUFFER 131 
#define  ARGI_SIMPLE_TARGET 130 
#define  ARGI_STRING 129 
#define  ARGI_TARGETREF 128 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int,union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*,union acpi_operand_object**,int) ; 
 int /*<<< orphan*/  FUNC11 (union acpi_operand_object*,union acpi_operand_object**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  acpi_gbl_enable_interpreter_slack ; 
 union acpi_operand_object* FUNC13 (struct acpi_namespace_node*) ; 
 struct acpi_opcode_info* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC17 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC18 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC19 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  ex_resolve_operands ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC22(u16 opcode,
			 union acpi_operand_object ** stack_ptr,
			 struct acpi_walk_state * walk_state)
{
	union acpi_operand_object *obj_desc;
	acpi_status status = AE_OK;
	u8 object_type;
	u32 arg_types;
	const struct acpi_opcode_info *op_info;
	u32 this_arg_type;
	acpi_object_type type_needed;
	u16 target_op = 0;

	FUNC4(ex_resolve_operands, opcode);

	op_info = FUNC14(opcode);
	if (op_info->class == AML_CLASS_UNKNOWN) {
		FUNC21(AE_AML_BAD_OPCODE);
	}

	arg_types = op_info->runtime_args;
	if (arg_types == ARGI_INVALID_OPCODE) {
		FUNC2((AE_INFO, "Unknown AML opcode %X", opcode));

		FUNC21(AE_AML_INTERNAL);
	}

	FUNC0((ACPI_DB_EXEC,
			  "Opcode %X [%s] RequiredOperandTypes=%8.8X\n",
			  opcode, op_info->name, arg_types));

	/*
	 * Normal exit is with (arg_types == 0) at end of argument list.
	 * Function will return an exception from within the loop upon
	 * finding an entry which is not (or cannot be converted
	 * to) the required type; if stack underflows; or upon
	 * finding a NULL stack entry (which should not happen).
	 */
	while (FUNC6(arg_types)) {
		if (!stack_ptr || !*stack_ptr) {
			FUNC2((AE_INFO, "Null stack entry at %p",
				    stack_ptr));

			FUNC21(AE_AML_INTERNAL);
		}

		/* Extract useful items */

		obj_desc = *stack_ptr;

		/* Decode the descriptor type */

		switch (FUNC5(obj_desc)) {
		case ACPI_DESC_TYPE_NAMED:

			/* Namespace Node */

			object_type =
			    ((struct acpi_namespace_node *)obj_desc)->type;

			/*
			 * Resolve an alias object. The construction of these objects
			 * guarantees that there is only one level of alias indirection;
			 * thus, the attached object is always the aliased namespace node
			 */
			if (object_type == ACPI_TYPE_LOCAL_ALIAS) {
				obj_desc =
				    FUNC13((struct
								 acpi_namespace_node
								 *)obj_desc);
				*stack_ptr = obj_desc;
				object_type =
				    ((struct acpi_namespace_node *)obj_desc)->
				    type;
			}
			break;

		case ACPI_DESC_TYPE_OPERAND:

			/* ACPI internal object */

			object_type = obj_desc->common.type;

			/* Check for bad acpi_object_type */

			if (!FUNC20(object_type)) {
				FUNC2((AE_INFO,
					    "Bad operand object type [%X]",
					    object_type));

				FUNC21(AE_AML_OPERAND_TYPE);
			}

			if (object_type == (u8) ACPI_TYPE_LOCAL_REFERENCE) {

				/* Validate the Reference */

				switch (obj_desc->reference.class) {
				case ACPI_REFCLASS_DEBUG:

					target_op = AML_DEBUG_OP;

					/*lint -fallthrough */

				case ACPI_REFCLASS_ARG:
				case ACPI_REFCLASS_LOCAL:
				case ACPI_REFCLASS_INDEX:
				case ACPI_REFCLASS_REFOF:
				case ACPI_REFCLASS_TABLE:	/* ddb_handle from LOAD_OP or LOAD_TABLE_OP */
				case ACPI_REFCLASS_NAME:	/* Reference to a named object */

					FUNC0((ACPI_DB_EXEC,
							  "Operand is a Reference, Class [%s] %2.2X\n",
							  FUNC18
							  (obj_desc),
							  obj_desc->reference.
							  class));
					break;

				default:

					FUNC2((AE_INFO,
						    "Unknown Reference Class %2.2X in %p",
						    obj_desc->reference.class,
						    obj_desc));

					FUNC21(AE_AML_OPERAND_TYPE);
				}
			}
			break;

		default:

			/* Invalid descriptor */

			FUNC2((AE_INFO, "Invalid descriptor %p [%s]",
				    obj_desc,
				    FUNC16(obj_desc)));

			FUNC21(AE_AML_OPERAND_TYPE);
		}

		/* Get one argument type, point to the next */

		this_arg_type = FUNC6(arg_types);
		FUNC7(arg_types);

		/*
		 * Handle cases where the object does not need to be
		 * resolved to a value
		 */
		switch (this_arg_type) {
		case ARGI_REF_OR_STRING:	/* Can be a String or Reference */

			if ((FUNC5(obj_desc) ==
			     ACPI_DESC_TYPE_OPERAND)
			    && (obj_desc->common.type == ACPI_TYPE_STRING)) {
				/*
				 * String found - the string references a named object and
				 * must be resolved to a node
				 */
				goto next_operand;
			}

			/*
			 * Else not a string - fall through to the normal Reference
			 * case below
			 */
			/*lint -fallthrough */

		case ARGI_REFERENCE:	/* References: */
		case ARGI_INTEGER_REF:
		case ARGI_OBJECT_REF:
		case ARGI_DEVICE_REF:
		case ARGI_TARGETREF:	/* Allows implicit conversion rules before store */
		case ARGI_FIXED_TARGET:	/* No implicit conversion before store to target */
		case ARGI_SIMPLE_TARGET:	/* Name, Local, or Arg - no implicit conversion  */

			/*
			 * Need an operand of type ACPI_TYPE_LOCAL_REFERENCE
			 * A Namespace Node is OK as-is
			 */
			if (FUNC5(obj_desc) ==
			    ACPI_DESC_TYPE_NAMED) {
				goto next_operand;
			}

			status =
			    FUNC8(ACPI_TYPE_LOCAL_REFERENCE,
						      object_type, obj_desc);
			if (FUNC3(status)) {
				FUNC21(status);
			}
			goto next_operand;

		case ARGI_DATAREFOBJ:	/* Store operator only */

			/*
			 * We don't want to resolve index_op reference objects during
			 * a store because this would be an implicit de_ref_of operation.
			 * Instead, we just want to store the reference object.
			 * -- All others must be resolved below.
			 */
			if ((opcode == AML_STORE_OP) &&
			    ((*stack_ptr)->common.type ==
			     ACPI_TYPE_LOCAL_REFERENCE)
			    && ((*stack_ptr)->reference.class == ACPI_REFCLASS_INDEX)) {
				goto next_operand;
			}
			break;

		default:
			/* All cases covered above */
			break;
		}

		/*
		 * Resolve this object to a value
		 */
		status = FUNC12(stack_ptr, walk_state);
		if (FUNC3(status)) {
			FUNC21(status);
		}

		/* Get the resolved object */

		obj_desc = *stack_ptr;

		/*
		 * Check the resulting object (value) type
		 */
		switch (this_arg_type) {
			/*
			 * For the simple cases, only one type of resolved object
			 * is allowed
			 */
		case ARGI_MUTEX:

			/* Need an operand of type ACPI_TYPE_MUTEX */

			type_needed = ACPI_TYPE_MUTEX;
			break;

		case ARGI_EVENT:

			/* Need an operand of type ACPI_TYPE_EVENT */

			type_needed = ACPI_TYPE_EVENT;
			break;

		case ARGI_PACKAGE:	/* Package */

			/* Need an operand of type ACPI_TYPE_PACKAGE */

			type_needed = ACPI_TYPE_PACKAGE;
			break;

		case ARGI_ANYTYPE:

			/* Any operand type will do */

			type_needed = ACPI_TYPE_ANY;
			break;

		case ARGI_DDBHANDLE:

			/* Need an operand of type ACPI_TYPE_DDB_HANDLE */

			type_needed = ACPI_TYPE_LOCAL_REFERENCE;
			break;

			/*
			 * The more complex cases allow multiple resolved object types
			 */
		case ARGI_INTEGER:

			/*
			 * Need an operand of type ACPI_TYPE_INTEGER,
			 * But we can implicitly convert from a STRING or BUFFER
			 * Aka - "Implicit Source Operand Conversion"
			 */
			status =
			    FUNC10(obj_desc, stack_ptr, 16);
			if (FUNC3(status)) {
				if (status == AE_TYPE) {
					FUNC2((AE_INFO,
						    "Needed [Integer/String/Buffer], found [%s] %p",
						    FUNC17
						    (obj_desc), obj_desc));

					FUNC21(AE_AML_OPERAND_TYPE);
				}

				FUNC21(status);
			}

			if (obj_desc != *stack_ptr) {
				FUNC19(obj_desc);
			}
			goto next_operand;

		case ARGI_BUFFER:

			/*
			 * Need an operand of type ACPI_TYPE_BUFFER,
			 * But we can implicitly convert from a STRING or INTEGER
			 * Aka - "Implicit Source Operand Conversion"
			 */
			status = FUNC9(obj_desc, stack_ptr);
			if (FUNC3(status)) {
				if (status == AE_TYPE) {
					FUNC2((AE_INFO,
						    "Needed [Integer/String/Buffer], found [%s] %p",
						    FUNC17
						    (obj_desc), obj_desc));

					FUNC21(AE_AML_OPERAND_TYPE);
				}

				FUNC21(status);
			}

			if (obj_desc != *stack_ptr) {
				FUNC19(obj_desc);
			}
			goto next_operand;

		case ARGI_STRING:

			/*
			 * Need an operand of type ACPI_TYPE_STRING,
			 * But we can implicitly convert from a BUFFER or INTEGER
			 * Aka - "Implicit Source Operand Conversion"
			 */
			status = FUNC11(obj_desc, stack_ptr,
							   ACPI_IMPLICIT_CONVERT_HEX);
			if (FUNC3(status)) {
				if (status == AE_TYPE) {
					FUNC2((AE_INFO,
						    "Needed [Integer/String/Buffer], found [%s] %p",
						    FUNC17
						    (obj_desc), obj_desc));

					FUNC21(AE_AML_OPERAND_TYPE);
				}

				FUNC21(status);
			}

			if (obj_desc != *stack_ptr) {
				FUNC19(obj_desc);
			}
			goto next_operand;

		case ARGI_COMPUTEDATA:

			/* Need an operand of type INTEGER, STRING or BUFFER */

			switch (obj_desc->common.type) {
			case ACPI_TYPE_INTEGER:
			case ACPI_TYPE_STRING:
			case ACPI_TYPE_BUFFER:

				/* Valid operand */
				break;

			default:
				FUNC2((AE_INFO,
					    "Needed [Integer/String/Buffer], found [%s] %p",
					    FUNC17
					    (obj_desc), obj_desc));

				FUNC21(AE_AML_OPERAND_TYPE);
			}
			goto next_operand;

		case ARGI_BUFFER_OR_STRING:

			/* Need an operand of type STRING or BUFFER */

			switch (obj_desc->common.type) {
			case ACPI_TYPE_STRING:
			case ACPI_TYPE_BUFFER:

				/* Valid operand */
				break;

			case ACPI_TYPE_INTEGER:

				/* Highest priority conversion is to type Buffer */

				status =
				    FUNC9(obj_desc,
							      stack_ptr);
				if (FUNC3(status)) {
					FUNC21(status);
				}

				if (obj_desc != *stack_ptr) {
					FUNC19(obj_desc);
				}
				break;

			default:
				FUNC2((AE_INFO,
					    "Needed [Integer/String/Buffer], found [%s] %p",
					    FUNC17
					    (obj_desc), obj_desc));

				FUNC21(AE_AML_OPERAND_TYPE);
			}
			goto next_operand;

		case ARGI_DATAOBJECT:
			/*
			 * ARGI_DATAOBJECT is only used by the size_of operator.
			 * Need a buffer, string, package, or ref_of reference.
			 *
			 * The only reference allowed here is a direct reference to
			 * a namespace node.
			 */
			switch (obj_desc->common.type) {
			case ACPI_TYPE_PACKAGE:
			case ACPI_TYPE_STRING:
			case ACPI_TYPE_BUFFER:
			case ACPI_TYPE_LOCAL_REFERENCE:

				/* Valid operand */
				break;

			default:
				FUNC2((AE_INFO,
					    "Needed [Buffer/String/Package/Reference], found [%s] %p",
					    FUNC17
					    (obj_desc), obj_desc));

				FUNC21(AE_AML_OPERAND_TYPE);
			}
			goto next_operand;

		case ARGI_COMPLEXOBJ:

			/* Need a buffer or package or (ACPI 2.0) String */

			switch (obj_desc->common.type) {
			case ACPI_TYPE_PACKAGE:
			case ACPI_TYPE_STRING:
			case ACPI_TYPE_BUFFER:

				/* Valid operand */
				break;

			default:
				FUNC2((AE_INFO,
					    "Needed [Buffer/String/Package], found [%s] %p",
					    FUNC17
					    (obj_desc), obj_desc));

				FUNC21(AE_AML_OPERAND_TYPE);
			}
			goto next_operand;

		case ARGI_REGION_OR_BUFFER:	/* Used by Load() only */

			/* Need an operand of type REGION or a BUFFER (which could be a resolved region field) */

			switch (obj_desc->common.type) {
			case ACPI_TYPE_BUFFER:
			case ACPI_TYPE_REGION:

				/* Valid operand */
				break;

			default:
				FUNC2((AE_INFO,
					    "Needed [Region/Buffer], found [%s] %p",
					    FUNC17
					    (obj_desc), obj_desc));

				FUNC21(AE_AML_OPERAND_TYPE);
			}
			goto next_operand;

		case ARGI_DATAREFOBJ:

			/* Used by the Store() operator only */

			switch (obj_desc->common.type) {
			case ACPI_TYPE_INTEGER:
			case ACPI_TYPE_PACKAGE:
			case ACPI_TYPE_STRING:
			case ACPI_TYPE_BUFFER:
			case ACPI_TYPE_BUFFER_FIELD:
			case ACPI_TYPE_LOCAL_REFERENCE:
			case ACPI_TYPE_LOCAL_REGION_FIELD:
			case ACPI_TYPE_LOCAL_BANK_FIELD:
			case ACPI_TYPE_LOCAL_INDEX_FIELD:
			case ACPI_TYPE_DDB_HANDLE:

				/* Valid operand */
				break;

			default:

				if (acpi_gbl_enable_interpreter_slack) {
					/*
					 * Enable original behavior of Store(), allowing any and all
					 * objects as the source operand.  The ACPI spec does not
					 * allow this, however.
					 */
					break;
				}

				if (target_op == AML_DEBUG_OP) {

					/* Allow store of any object to the Debug object */

					break;
				}

				FUNC2((AE_INFO,
					    "Needed Integer/Buffer/String/Package/Ref/Ddb], found [%s] %p",
					    FUNC17
					    (obj_desc), obj_desc));

				FUNC21(AE_AML_OPERAND_TYPE);
			}
			goto next_operand;

		default:

			/* Unknown type */

			FUNC2((AE_INFO,
				    "Internal - Unknown ARGI (required operand) type %X",
				    this_arg_type));

			FUNC21(AE_BAD_PARAMETER);
		}

		/*
		 * Make sure that the original object was resolved to the
		 * required object type (Simple cases only).
		 */
		status = FUNC8(type_needed,
						   (*stack_ptr)->common.type,
						   *stack_ptr);
		if (FUNC3(status)) {
			FUNC21(status);
		}

	      next_operand:
		/*
		 * If more operands needed, decrement stack_ptr to point
		 * to next operand on stack
		 */
		if (FUNC6(arg_types)) {
			stack_ptr--;
		}
	}

	FUNC1(walk_state->operands,
			   FUNC15(opcode),
			   walk_state->num_operands);

	FUNC21(status);
}