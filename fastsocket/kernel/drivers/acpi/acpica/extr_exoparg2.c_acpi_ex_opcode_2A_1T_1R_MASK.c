#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int target_type; union acpi_operand_object* object; int /*<<< orphan*/ * where; int /*<<< orphan*/  class; int /*<<< orphan*/  value; } ;
struct TYPE_13__ {size_t count; int /*<<< orphan*/ * elements; } ;
struct TYPE_12__ {size_t length; int /*<<< orphan*/ * pointer; } ;
struct TYPE_11__ {size_t length; int /*<<< orphan*/  pointer; } ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct TYPE_9__ {size_t value; } ;
union acpi_operand_object {TYPE_7__ reference; TYPE_6__ package; TYPE_5__ buffer; TYPE_4__ string; TYPE_3__ common; TYPE_2__ integer; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; TYPE_1__* op_info; union acpi_operand_object** operands; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  size_t acpi_size ;
typedef  size_t acpi_integer ;
struct TYPE_8__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  ACPI_REFCLASS_INDEX ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER 135 
 void* ACPI_TYPE_BUFFER_FIELD ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_TYPE_LOCAL_REFERENCE ; 
#define  ACPI_TYPE_PACKAGE 134 
#define  ACPI_TYPE_STRING 133 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_AML_BUFFER_LIMIT ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_PACKAGE_LIMIT ; 
 int /*<<< orphan*/  AE_AML_STRING_LIMIT ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_CONCAT_OP 132 
#define  AML_CONCAT_RES_OP 131 
#define  AML_INDEX_OP 130 
 int AML_MATH ; 
#define  AML_MOD_OP 129 
#define  AML_TO_STRING_OP 128 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 size_t FUNC9 (int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (union acpi_operand_object*) ; 
 union acpi_operand_object* FUNC13 (int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC14 (size_t) ; 
 int /*<<< orphan*/  FUNC15 (size_t,size_t,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_opcode_2A_1T_1R ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

acpi_status FUNC18(struct acpi_walk_state *walk_state)
{
	union acpi_operand_object **operand = &walk_state->operands[0];
	union acpi_operand_object *return_desc = NULL;
	acpi_integer index;
	acpi_status status = AE_OK;
	acpi_size length;

	FUNC4(ex_opcode_2A_1T_1R,
				FUNC11(walk_state->opcode));

	/* Execute the opcode */

	if (walk_state->op_info->flags & AML_MATH) {

		/* All simple math opcodes (add, etc.) */

		return_desc = FUNC13(ACPI_TYPE_INTEGER);
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		return_desc->integer.value =
		    FUNC9(walk_state->opcode,
				       operand[0]->integer.value,
				       operand[1]->integer.value);
		goto store_result_to_target;
	}

	switch (walk_state->opcode) {
	case AML_MOD_OP:	/* Mod (Dividend, Divisor, remainder_result (ACPI 2.0) */

		return_desc = FUNC13(ACPI_TYPE_INTEGER);
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		/* return_desc will contain the remainder */

		status = FUNC15(operand[0]->integer.value,
					operand[1]->integer.value,
					NULL, &return_desc->integer.value);
		break;

	case AML_CONCAT_OP:	/* Concatenate (Data1, Data2, Result) */

		status = FUNC8(operand[0], operand[1],
						&return_desc, walk_state);
		break;

	case AML_TO_STRING_OP:	/* to_string (Buffer, Length, Result) (ACPI 2.0) */

		/*
		 * Input object is guaranteed to be a buffer at this point (it may have
		 * been converted.)  Copy the raw buffer data to a new object of
		 * type String.
		 */

		/*
		 * Get the length of the new string. It is the smallest of:
		 * 1) Length of the input buffer
		 * 2) Max length as specified in the to_string operator
		 * 3) Length of input buffer up to a zero byte (null terminator)
		 *
		 * NOTE: A length of zero is ok, and will create a zero-length, null
		 *       terminated string.
		 */
		length = 0;
		while ((length < operand[0]->buffer.length) &&
		       (length < operand[1]->integer.value) &&
		       (operand[0]->buffer.pointer[length])) {
			length++;
		}

		/* Allocate a new string object */

		return_desc = FUNC14(length);
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		/*
		 * Copy the raw buffer data with no transform.
		 * (NULL terminated already)
		 */
		FUNC5(return_desc->string.pointer,
			    operand[0]->buffer.pointer, length);
		break;

	case AML_CONCAT_RES_OP:

		/* concatenate_res_template (Buffer, Buffer, Result) (ACPI 2.0) */

		status = FUNC7(operand[0], operand[1],
						 &return_desc, walk_state);
		break;

	case AML_INDEX_OP:	/* Index (Source Index Result) */

		/* Create the internal return object */

		return_desc =
		    FUNC13(ACPI_TYPE_LOCAL_REFERENCE);
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		/* Initialize the Index reference object */

		index = operand[1]->integer.value;
		return_desc->reference.value = (u32) index;
		return_desc->reference.class = ACPI_REFCLASS_INDEX;

		/*
		 * At this point, the Source operand is a String, Buffer, or Package.
		 * Verify that the index is within range.
		 */
		switch ((operand[0])->common.type) {
		case ACPI_TYPE_STRING:

			if (index >= operand[0]->string.length) {
				status = AE_AML_STRING_LIMIT;
			}

			return_desc->reference.target_type =
			    ACPI_TYPE_BUFFER_FIELD;
			break;

		case ACPI_TYPE_BUFFER:

			if (index >= operand[0]->buffer.length) {
				status = AE_AML_BUFFER_LIMIT;
			}

			return_desc->reference.target_type =
			    ACPI_TYPE_BUFFER_FIELD;
			break;

		case ACPI_TYPE_PACKAGE:

			if (index >= operand[0]->package.count) {
				status = AE_AML_PACKAGE_LIMIT;
			}

			return_desc->reference.target_type = ACPI_TYPE_PACKAGE;
			return_desc->reference.where =
			    &operand[0]->package.elements[index];
			break;

		default:

			status = AE_AML_INTERNAL;
			goto cleanup;
		}

		/* Failure means that the Index was beyond the end of the object */

		if (FUNC2(status)) {
			FUNC1((AE_INFO, status,
					"Index (%X%8.8X) is beyond end of object",
					FUNC3(index)));
			goto cleanup;
		}

		/*
		 * Save the target object and add a reference to it for the life
		 * of the index
		 */
		return_desc->reference.object = operand[0];
		FUNC12(operand[0]);

		/* Store the reference to the Target */

		status = FUNC10(return_desc, operand[2], walk_state);

		/* Return the reference */

		walk_state->result_obj = return_desc;
		goto cleanup;

	default:

		FUNC0((AE_INFO, "Unknown AML opcode %X",
			    walk_state->opcode));
		status = AE_AML_BAD_OPCODE;
		break;
	}

      store_result_to_target:

	if (FUNC6(status)) {
		/*
		 * Store the result of the operation (which is now in return_desc) into
		 * the Target descriptor.
		 */
		status = FUNC10(return_desc, operand[2], walk_state);
		if (FUNC2(status)) {
			goto cleanup;
		}

		if (!walk_state->result_obj) {
			walk_state->result_obj = return_desc;
		}
	}

      cleanup:

	/* Delete return object on error */

	if (FUNC2(status)) {
		FUNC16(return_desc);
		walk_state->result_obj = NULL;
	}

	FUNC17(status);
}