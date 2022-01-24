#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  field_flags; int /*<<< orphan*/  base_byte_offset; int /*<<< orphan*/  start_field_bit_offset; int /*<<< orphan*/  bit_length; } ;
struct TYPE_15__ {int type; int flags; } ;
struct TYPE_14__ {scalar_t__ length; void* pointer; } ;
struct TYPE_13__ {scalar_t__ length; void* pointer; } ;
struct TYPE_12__ {int /*<<< orphan*/  value; } ;
struct TYPE_11__ {int attribute; TYPE_2__* region_obj; } ;
union acpi_operand_object {TYPE_8__ common_field; TYPE_7__ common; TYPE_6__ string; TYPE_5__ buffer; TYPE_4__ integer; TYPE_3__ field; } ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_integer ;
struct TYPE_9__ {scalar_t__ space_id; } ;
struct TYPE_10__ {TYPE_1__ region; } ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_IPMI ; 
 scalar_t__ ACPI_ADR_SPACE_SMBUS ; 
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 scalar_t__ ACPI_IPMI_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,scalar_t__) ; 
 scalar_t__ ACPI_SMBUS_BUFFER_SIZE ; 
#define  ACPI_TYPE_BUFFER 130 
 int ACPI_TYPE_BUFFER_FIELD ; 
#define  ACPI_TYPE_INTEGER 129 
 int ACPI_TYPE_LOCAL_REGION_FIELD ; 
#define  ACPI_TYPE_STRING 128 
 int ACPI_WRITE ; 
 int /*<<< orphan*/  AE_AML_BUFFER_LIMIT ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  ex_write_data_to_field ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC14(union acpi_operand_object *source_desc,
			    union acpi_operand_object *obj_desc,
			    union acpi_operand_object **result_desc)
{
	acpi_status status;
	u32 length;
	void *buffer;
	union acpi_operand_object *buffer_desc;
	u32 function;

	FUNC3(ex_write_data_to_field, obj_desc);

	/* Parameter validation */

	if (!source_desc || !obj_desc) {
		FUNC13(AE_AML_NO_OPERAND);
	}

	if (obj_desc->common.type == ACPI_TYPE_BUFFER_FIELD) {
		/*
		 * If the buffer_field arguments have not been previously evaluated,
		 * evaluate them now and save the results.
		 */
		if (!(obj_desc->common.flags & AOPOBJ_DATA_VALID)) {
			status = FUNC5(obj_desc);
			if (FUNC2(status)) {
				FUNC13(status);
			}
		}
	} else if ((obj_desc->common.type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
		   (obj_desc->field.region_obj->region.space_id ==
		    ACPI_ADR_SPACE_SMBUS
		    || obj_desc->field.region_obj->region.space_id ==
		    ACPI_ADR_SPACE_IPMI)) {
		/*
		 * This is an SMBus or IPMI write. We will bypass the entire field
		 * mechanism and handoff the buffer directly to the handler. For
		 * these address spaces, the buffer is bi-directional; on a write,
		 * return data is returned in the same buffer.
		 *
		 * Source must be a buffer of sufficient size:
		 * ACPI_SMBUS_BUFFER_SIZE or ACPI_IPMI_BUFFER_SIZE.
		 *
		 * Note: SMBus protocol type is passed in upper 16-bits of Function
		 */
		if (source_desc->common.type != ACPI_TYPE_BUFFER) {
			FUNC1((AE_INFO,
				    "SMBus or IPMI write requires Buffer, found type %s",
				    FUNC11(source_desc)));

			FUNC13(AE_AML_OPERAND_TYPE);
		}

		if (obj_desc->field.region_obj->region.space_id ==
		    ACPI_ADR_SPACE_SMBUS) {
			length = ACPI_SMBUS_BUFFER_SIZE;
			function =
			    ACPI_WRITE | (obj_desc->field.attribute << 16);
		} else {	/* IPMI */

			length = ACPI_IPMI_BUFFER_SIZE;
			function = ACPI_WRITE;
		}

		if (source_desc->buffer.length < length) {
			FUNC1((AE_INFO,
				    "SMBus or IPMI write requires Buffer of length %X, found length %X",
				    length, source_desc->buffer.length));

			FUNC13(AE_AML_BUFFER_LIMIT);
		}

		/* Create the bi-directional buffer */

		buffer_desc = FUNC10(length);
		if (!buffer_desc) {
			FUNC13(AE_NO_MEMORY);
		}

		buffer = buffer_desc->buffer.pointer;
		FUNC4(buffer, source_desc->buffer.pointer, length);

		/* Lock entire transaction if requested */

		FUNC7(obj_desc->common_field.field_flags);

		/*
		 * Perform the write (returns status and perhaps data in the
		 * same buffer)
		 */
		status = FUNC6(obj_desc, 0,
					       (acpi_integer *) buffer,
					       function);
		FUNC9(obj_desc->common_field.field_flags);

		*result_desc = buffer_desc;
		FUNC13(status);
	}

	/* Get a pointer to the data to be written */

	switch (source_desc->common.type) {
	case ACPI_TYPE_INTEGER:
		buffer = &source_desc->integer.value;
		length = sizeof(source_desc->integer.value);
		break;

	case ACPI_TYPE_BUFFER:
		buffer = source_desc->buffer.pointer;
		length = source_desc->buffer.length;
		break;

	case ACPI_TYPE_STRING:
		buffer = source_desc->string.pointer;
		length = source_desc->string.length;
		break;

	default:
		FUNC13(AE_AML_OPERAND_TYPE);
	}

	FUNC0((ACPI_DB_BFIELD,
			  "FieldWrite [FROM]: Obj %p (%s:%X), Buf %p, ByteLen %X\n",
			  source_desc,
			  FUNC12(source_desc->common.type),
			  source_desc->common.type, buffer, length));

	FUNC0((ACPI_DB_BFIELD,
			  "FieldWrite [TO]:   Obj %p (%s:%X), BitLen %X, BitOff %X, ByteOff %X\n",
			  obj_desc,
			  FUNC12(obj_desc->common.type),
			  obj_desc->common.type,
			  obj_desc->common_field.bit_length,
			  obj_desc->common_field.start_field_bit_offset,
			  obj_desc->common_field.base_byte_offset));

	/* Lock entire transaction if requested */

	FUNC7(obj_desc->common_field.field_flags);

	/* Write to the field */

	status = FUNC8(obj_desc, buffer, length);
	FUNC9(obj_desc->common_field.field_flags);

	FUNC13(status);
}