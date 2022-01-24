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
struct TYPE_2__ {int field_flags; int access_byte_width; } ;
union acpi_operand_object {TYPE_1__ common_field; } ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  mask ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_integer ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ ACPI_INTEGER_MAX ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  ACPI_READ ; 
 int /*<<< orphan*/  ACPI_WRITE ; 
 int /*<<< orphan*/  AE_AML_OPERAND_VALUE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_FIELD_UPDATE_PRESERVE 130 
 int AML_FIELD_UPDATE_RULE_MASK ; 
#define  AML_FIELD_UPDATE_WRITE_AS_ONES 129 
#define  AML_FIELD_UPDATE_WRITE_AS_ZEROS 128 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_write_with_update_rule ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC8(union acpi_operand_object *obj_desc,
			       acpi_integer mask,
			       acpi_integer field_value,
			       u32 field_datum_byte_offset)
{
	acpi_status status = AE_OK;
	acpi_integer merged_value;
	acpi_integer current_value;

	FUNC4(ex_write_with_update_rule, mask);

	/* Start with the new bits  */

	merged_value = field_value;

	/* If the mask is all ones, we don't need to worry about the update rule */

	if (mask != ACPI_INTEGER_MAX) {

		/* Decode the update rule */

		switch (obj_desc->common_field.
			field_flags & AML_FIELD_UPDATE_RULE_MASK) {
		case AML_FIELD_UPDATE_PRESERVE:
			/*
			 * Check if update rule needs to be applied (not if mask is all
			 * ones)  The left shift drops the bits we want to ignore.
			 */
			if ((~mask << (FUNC5(sizeof(mask)) -
				       FUNC5(obj_desc->common_field.
						  access_byte_width))) != 0) {
				/*
				 * Read the current contents of the byte/word/dword containing
				 * the field, and merge with the new field value.
				 */
				status =
				    FUNC6(obj_desc,
							   field_datum_byte_offset,
							   &current_value,
							   ACPI_READ);
				if (FUNC2(status)) {
					FUNC7(status);
				}

				merged_value |= (current_value & ~mask);
			}
			break;

		case AML_FIELD_UPDATE_WRITE_AS_ONES:

			/* Set positions outside the field to all ones */

			merged_value |= ~mask;
			break;

		case AML_FIELD_UPDATE_WRITE_AS_ZEROS:

			/* Set positions outside the field to all zeros */

			merged_value &= mask;
			break;

		default:

			FUNC1((AE_INFO,
				    "Unknown UpdateRule value: %X",
				    (obj_desc->common_field.
				     field_flags &
				     AML_FIELD_UPDATE_RULE_MASK)));
			FUNC7(AE_AML_OPERAND_VALUE);
		}
	}

	FUNC0((ACPI_DB_BFIELD,
			  "Mask %8.8X%8.8X, DatumOffset %X, Width %X, Value %8.8X%8.8X, MergedValue %8.8X%8.8X\n",
			  FUNC3(mask),
			  field_datum_byte_offset,
			  obj_desc->common_field.access_byte_width,
			  FUNC3(field_value),
			  FUNC3(merged_value)));

	/* Write the merged value */

	status = FUNC6(obj_desc, field_datum_byte_offset,
					&merged_value, ACPI_WRITE);

	FUNC7(status);
}