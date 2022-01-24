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
struct TYPE_8__ {int /*<<< orphan*/  flags; union acpi_operand_object* buffer_obj; } ;
struct TYPE_7__ {scalar_t__ type; int reference_count; } ;
struct TYPE_6__ {scalar_t__ length; union acpi_operand_object* node; } ;
struct TYPE_5__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_4__ buffer_field; TYPE_3__ common; TYPE_2__ buffer; TYPE_1__ integer; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 scalar_t__ FUNC3 (union acpi_operand_object*) ; 
 scalar_t__ ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_AML_BUFFER_LIMIT ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_AML_OPERAND_VALUE ; 
 int /*<<< orphan*/  AE_INFO ; 
#define  AML_CREATE_BIT_FIELD_OP 133 
#define  AML_CREATE_BYTE_FIELD_OP 132 
#define  AML_CREATE_DWORD_FIELD_OP 131 
#define  AML_CREATE_FIELD_OP 130 
#define  AML_CREATE_QWORD_FIELD_OP 129 
#define  AML_CREATE_WORD_FIELD_OP 128 
 int /*<<< orphan*/  AML_FIELD_ACCESS_BYTE ; 
 int /*<<< orphan*/  AML_FIELD_ACCESS_DWORD ; 
 int /*<<< orphan*/  AML_FIELD_ACCESS_QWORD ; 
 int /*<<< orphan*/  AML_FIELD_ACCESS_WORD ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_init_buffer_field ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC11(u16 aml_opcode,
			  union acpi_operand_object *obj_desc,
			  union acpi_operand_object *buffer_desc,
			  union acpi_operand_object *offset_desc,
			  union acpi_operand_object *length_desc,
			  union acpi_operand_object *result_desc)
{
	u32 offset;
	u32 bit_offset;
	u32 bit_count;
	u8 field_flags;
	acpi_status status;

	FUNC2(ds_init_buffer_field, obj_desc);

	/* Host object must be a Buffer */

	if (buffer_desc->common.type != ACPI_TYPE_BUFFER) {
		FUNC0((AE_INFO,
			    "Target of Create Field is not a Buffer object - %s",
			    FUNC8(buffer_desc)));

		status = AE_AML_OPERAND_TYPE;
		goto cleanup;
	}

	/*
	 * The last parameter to all of these opcodes (result_desc) started
	 * out as a name_string, and should therefore now be a NS node
	 * after resolution in acpi_ex_resolve_operands().
	 */
	if (FUNC3(result_desc) != ACPI_DESC_TYPE_NAMED) {
		FUNC0((AE_INFO,
			    "(%s) destination not a NS Node [%s]",
			    FUNC5(aml_opcode),
			    FUNC6(result_desc)));

		status = AE_AML_OPERAND_TYPE;
		goto cleanup;
	}

	offset = (u32) offset_desc->integer.value;

	/*
	 * Setup the Bit offsets and counts, according to the opcode
	 */
	switch (aml_opcode) {
	case AML_CREATE_FIELD_OP:

		/* Offset is in bits, count is in bits */

		field_flags = AML_FIELD_ACCESS_BYTE;
		bit_offset = offset;
		bit_count = (u32) length_desc->integer.value;

		/* Must have a valid (>0) bit count */

		if (bit_count == 0) {
			FUNC0((AE_INFO,
				    "Attempt to CreateField of length zero"));
			status = AE_AML_OPERAND_VALUE;
			goto cleanup;
		}
		break;

	case AML_CREATE_BIT_FIELD_OP:

		/* Offset is in bits, Field is one bit */

		bit_offset = offset;
		bit_count = 1;
		field_flags = AML_FIELD_ACCESS_BYTE;
		break;

	case AML_CREATE_BYTE_FIELD_OP:

		/* Offset is in bytes, field is one byte */

		bit_offset = 8 * offset;
		bit_count = 8;
		field_flags = AML_FIELD_ACCESS_BYTE;
		break;

	case AML_CREATE_WORD_FIELD_OP:

		/* Offset is in bytes, field is one word */

		bit_offset = 8 * offset;
		bit_count = 16;
		field_flags = AML_FIELD_ACCESS_WORD;
		break;

	case AML_CREATE_DWORD_FIELD_OP:

		/* Offset is in bytes, field is one dword */

		bit_offset = 8 * offset;
		bit_count = 32;
		field_flags = AML_FIELD_ACCESS_DWORD;
		break;

	case AML_CREATE_QWORD_FIELD_OP:

		/* Offset is in bytes, field is one qword */

		bit_offset = 8 * offset;
		bit_count = 64;
		field_flags = AML_FIELD_ACCESS_QWORD;
		break;

	default:

		FUNC0((AE_INFO,
			    "Unknown field creation opcode %02x", aml_opcode));
		status = AE_AML_BAD_OPCODE;
		goto cleanup;
	}

	/* Entire field must fit within the current length of the buffer */

	if ((bit_offset + bit_count) > (8 * (u32) buffer_desc->buffer.length)) {
		FUNC0((AE_INFO,
			    "Field [%4.4s] at %d exceeds Buffer [%4.4s] size %d (bits)",
			    FUNC7(result_desc),
			    bit_offset + bit_count,
			    FUNC7(buffer_desc->buffer.node),
			    8 * (u32) buffer_desc->buffer.length));
		status = AE_AML_BUFFER_LIMIT;
		goto cleanup;
	}

	/*
	 * Initialize areas of the field object that are common to all fields
	 * For field_flags, use LOCK_RULE = 0 (NO_LOCK),
	 * UPDATE_RULE = 0 (UPDATE_PRESERVE)
	 */
	status = FUNC4(obj_desc, field_flags, 0,
						  bit_offset, bit_count);
	if (FUNC1(status)) {
		goto cleanup;
	}

	obj_desc->buffer_field.buffer_obj = buffer_desc;

	/* Reference count for buffer_desc inherits obj_desc count */

	buffer_desc->common.reference_count = (u16)
	    (buffer_desc->common.reference_count +
	     obj_desc->common.reference_count);

      cleanup:

	/* Always delete the operands */

	FUNC9(offset_desc);
	FUNC9(buffer_desc);

	if (aml_opcode == AML_CREATE_FIELD_OP) {
		FUNC9(length_desc);
	}

	/* On failure, delete the result descriptor */

	if (FUNC1(status)) {
		FUNC9(result_desc);	/* Result descriptor */
	} else {
		/* Now the address and length are valid for this buffer_field */

		obj_desc->buffer_field.flags |= AOPOBJ_DATA_VALID;
	}

	FUNC10(status);
}