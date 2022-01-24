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
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_3__ {int type; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
#define  ACPI_TYPE_BUFFER 131 
#define  ACPI_TYPE_INTEGER 130 
#define  ACPI_TYPE_PACKAGE 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int,union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*,union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*,union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_store_object_to_object ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC11(union acpi_operand_object *source_desc,
			       union acpi_operand_object *dest_desc,
			       union acpi_operand_object **new_desc,
			       struct acpi_walk_state *walk_state)
{
	union acpi_operand_object *actual_src_desc;
	acpi_status status = AE_OK;

	FUNC1(ex_store_object_to_object, source_desc);

	actual_src_desc = source_desc;
	if (!dest_desc) {
		/*
		 * There is no destination object (An uninitialized node or
		 * package element), so we can simply copy the source object
		 * creating a new destination object
		 */
		status =
		    FUNC7(actual_src_desc, new_desc,
						    walk_state);
		FUNC10(status);
	}

	if (source_desc->common.type != dest_desc->common.type) {
		/*
		 * The source type does not match the type of the destination.
		 * Perform the "implicit conversion" of the source to the current type
		 * of the target as per the ACPI specification.
		 *
		 * If no conversion performed, actual_src_desc = source_desc.
		 * Otherwise, actual_src_desc is a temporary object to hold the
		 * converted object.
		 */
		status = FUNC3(dest_desc->common.type,
							source_desc,
							&actual_src_desc,
							walk_state);
		if (FUNC0(status)) {
			FUNC10(status);
		}

		if (source_desc == actual_src_desc) {
			/*
			 * No conversion was performed. Return the source_desc as the
			 * new object.
			 */
			*new_desc = source_desc;
			FUNC10(AE_OK);
		}
	}

	/*
	 * We now have two objects of identical types, and we can perform a
	 * copy of the *value* of the source object.
	 */
	switch (dest_desc->common.type) {
	case ACPI_TYPE_INTEGER:

		dest_desc->integer.value = actual_src_desc->integer.value;

		/* Truncate value if we are executing from a 32-bit ACPI table */

		FUNC6(dest_desc);
		break;

	case ACPI_TYPE_STRING:

		status =
		    FUNC5(actual_src_desc, dest_desc);
		break;

	case ACPI_TYPE_BUFFER:

		status =
		    FUNC4(actual_src_desc, dest_desc);
		break;

	case ACPI_TYPE_PACKAGE:

		status =
		    FUNC7(actual_src_desc, &dest_desc,
						    walk_state);
		break;

	default:
		/*
		 * All other types come here.
		 */
		FUNC2((AE_INFO, "Store into type %s not implemented",
			      FUNC8(dest_desc)));

		status = AE_NOT_IMPLEMENTED;
		break;
	}

	if (actual_src_desc != source_desc) {

		/* Delete the intermediate (temporary) source object */

		FUNC9(actual_src_desc);
	}

	*new_desc = dest_desc;
	FUNC10(status);
}