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
struct TYPE_14__ {int /*<<< orphan*/  access_byte_width; } ;
struct TYPE_13__ {int type; int flags; } ;
struct TYPE_12__ {scalar_t__ value; int /*<<< orphan*/  data_obj; int /*<<< orphan*/  index_obj; } ;
struct TYPE_11__ {scalar_t__ value; int /*<<< orphan*/  bank_obj; } ;
struct TYPE_10__ {scalar_t__ base_byte_offset; TYPE_2__* buffer_obj; } ;
union acpi_operand_object {TYPE_7__ common_field; TYPE_6__ common; TYPE_5__ index_field; TYPE_4__ bank_field; TYPE_3__ buffer_field; } ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  field_datum_byte_offset ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_integer ;
struct TYPE_8__ {scalar_t__ pointer; } ;
struct TYPE_9__ {TYPE_1__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_READ ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER_FIELD 131 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 130 
#define  ACPI_TYPE_LOCAL_INDEX_FIELD 129 
#define  ACPI_TYPE_LOCAL_REGION_FIELD 128 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_REGISTER_LIMIT ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*,scalar_t__,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ex_field_datum_io ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC13(union acpi_operand_object *obj_desc,
		       u32 field_datum_byte_offset,
		       acpi_integer * value, u32 read_write)
{
	acpi_status status;
	acpi_integer local_value;

	FUNC4(ex_field_datum_io, field_datum_byte_offset);

	if (read_write == ACPI_READ) {
		if (!value) {
			local_value = 0;

			/* To support reads without saving return value */
			value = &local_value;
		}

		/* Clear the entire return buffer first, [Very Important!] */

		*value = 0;
	}

	/*
	 * The four types of fields are:
	 *
	 * buffer_field - Read/write from/to a Buffer
	 * region_field - Read/write from/to a Operation Region.
	 * bank_field  - Write to a Bank Register, then read/write from/to an
	 *               operation_region
	 * index_field - Write to an Index Register, then read/write from/to a
	 *               Data Register
	 */
	switch (obj_desc->common.type) {
	case ACPI_TYPE_BUFFER_FIELD:
		/*
		 * If the buffer_field arguments have not been previously evaluated,
		 * evaluate them now and save the results.
		 */
		if (!(obj_desc->common.flags & AOPOBJ_DATA_VALID)) {
			status = FUNC7(obj_desc);
			if (FUNC2(status)) {
				FUNC12(status);
			}
		}

		if (read_write == ACPI_READ) {
			/*
			 * Copy the data from the source buffer.
			 * Length is the field width in bytes.
			 */
			FUNC5(*value,
				    (obj_desc->buffer_field.buffer_obj)->buffer.
				    pointer +
				    obj_desc->buffer_field.base_byte_offset +
				    field_datum_byte_offset,
				    obj_desc->common_field.access_byte_width);
		} else {
			/*
			 * Copy the data to the target buffer.
			 * Length is the field width in bytes.
			 */
			FUNC5((obj_desc->buffer_field.buffer_obj)->buffer.
				    pointer +
				    obj_desc->buffer_field.base_byte_offset +
				    field_datum_byte_offset, value,
				    obj_desc->common_field.access_byte_width);
		}

		status = AE_OK;
		break;

	case ACPI_TYPE_LOCAL_BANK_FIELD:

		/*
		 * Ensure that the bank_value is not beyond the capacity of
		 * the register
		 */
		if (FUNC11(obj_desc->bank_field.bank_obj,
					      (acpi_integer) obj_desc->
					      bank_field.value)) {
			FUNC12(AE_AML_REGISTER_LIMIT);
		}

		/*
		 * For bank_fields, we must write the bank_value to the bank_register
		 * (itself a region_field) before we can access the data.
		 */
		status =
		    FUNC10(obj_desc->bank_field.bank_obj,
					      &obj_desc->bank_field.value,
					      sizeof(obj_desc->bank_field.
						     value));
		if (FUNC2(status)) {
			FUNC12(status);
		}

		/*
		 * Now that the Bank has been selected, fall through to the
		 * region_field case and write the datum to the Operation Region
		 */

		/*lint -fallthrough */

	case ACPI_TYPE_LOCAL_REGION_FIELD:
		/*
		 * For simple region_fields, we just directly access the owning
		 * Operation Region.
		 */
		status =
		    FUNC8(obj_desc, field_datum_byte_offset,
					  value, read_write);
		break;

	case ACPI_TYPE_LOCAL_INDEX_FIELD:

		/*
		 * Ensure that the index_value is not beyond the capacity of
		 * the register
		 */
		if (FUNC11(obj_desc->index_field.index_obj,
					      (acpi_integer) obj_desc->
					      index_field.value)) {
			FUNC12(AE_AML_REGISTER_LIMIT);
		}

		/* Write the index value to the index_register (itself a region_field) */

		field_datum_byte_offset += obj_desc->index_field.value;

		FUNC0((ACPI_DB_BFIELD,
				  "Write to Index Register: Value %8.8X\n",
				  field_datum_byte_offset));

		status =
		    FUNC10(obj_desc->index_field.index_obj,
					      &field_datum_byte_offset,
					      sizeof(field_datum_byte_offset));
		if (FUNC2(status)) {
			FUNC12(status);
		}

		if (read_write == ACPI_READ) {

			/* Read the datum from the data_register */

			FUNC0((ACPI_DB_BFIELD,
					  "Read from Data Register\n"));

			status =
			    FUNC9(obj_desc->index_field.
						       data_obj, value,
						       sizeof(acpi_integer));
		} else {
			/* Write the datum to the data_register */

			FUNC0((ACPI_DB_BFIELD,
					  "Write to Data Register: Value %8.8X%8.8X\n",
					  FUNC3(*value)));

			status =
			    FUNC10(obj_desc->index_field.
						      data_obj, value,
						      sizeof(acpi_integer));
		}
		break;

	default:

		FUNC1((AE_INFO, "Wrong object type in field I/O %X",
			    obj_desc->common.type));
		status = AE_AML_INTERNAL;
		break;
	}

	if (FUNC6(status)) {
		if (read_write == ACPI_READ) {
			FUNC0((ACPI_DB_BFIELD,
					  "Value Read %8.8X%8.8X, Width %d\n",
					  FUNC3(*value),
					  obj_desc->common_field.
					  access_byte_width));
		} else {
			FUNC0((ACPI_DB_BFIELD,
					  "Value Written %8.8X%8.8X, Width %d\n",
					  FUNC3(*value),
					  obj_desc->common_field.
					  access_byte_width));
		}
	}

	FUNC12(status);
}