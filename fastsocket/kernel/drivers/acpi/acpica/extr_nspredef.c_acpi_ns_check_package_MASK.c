#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int type; size_t count1; size_t count2; int /*<<< orphan*/  object_type1; int /*<<< orphan*/  object_type2; } ;
struct TYPE_6__ {size_t count; int /*<<< orphan*/  tail_object_type; int /*<<< orphan*/ * object_type; } ;
union acpi_predefined_info {TYPE_5__ ret_info; TYPE_1__ ret_info3; } ;
struct TYPE_9__ {size_t count; union acpi_operand_object** elements; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_4__ package; TYPE_3__ common; TYPE_2__ integer; } ;
typedef  size_t u32 ;
struct acpi_predefined_data {int /*<<< orphan*/  node_flags; int /*<<< orphan*/  pathname; union acpi_predefined_info* predefined; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_NAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  ACPI_PTYPE1_FIXED 136 
#define  ACPI_PTYPE1_OPTION 135 
#define  ACPI_PTYPE1_VAR 134 
#define  ACPI_PTYPE2 133 
#define  ACPI_PTYPE2_COUNT 132 
#define  ACPI_PTYPE2_FIXED 131 
#define  ACPI_PTYPE2_MIN 130 
#define  ACPI_PTYPE2_PKG_COUNT 129 
#define  ACPI_PTYPE2_REV_FIXED 128 
 int /*<<< orphan*/  ACPI_RTYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_OPERAND_VALUE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_predefined_data*,union acpi_operand_object**,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_predefined_data*,union acpi_operand_object**,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_predefined_data*,union acpi_predefined_info const*,union acpi_operand_object**,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_predefined_data*,int,union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_predefined_data*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  ns_check_package ; 

__attribute__((used)) static acpi_status
FUNC9(struct acpi_predefined_data *data,
		      union acpi_operand_object **return_object_ptr)
{
	union acpi_operand_object *return_object = *return_object_ptr;
	const union acpi_predefined_info *package;
	union acpi_operand_object **elements;
	acpi_status status = AE_OK;
	u32 expected_count;
	u32 count;
	u32 i;

	FUNC2(ns_check_package);

	/* The package info for this name is in the next table entry */

	package = data->predefined + 1;

	FUNC0((ACPI_DB_NAMES,
			  "%s Validating return Package of Type %X, Count %X\n",
			  data->pathname, package->ret_info.type,
			  return_object->package.count));

	/*
	 * For variable-length Packages, we can safely remove all embedded
	 * and trailing NULL package elements
	 */
	FUNC7(data, package->ret_info.type,
				     return_object);

	/* Extract package count and elements array */

	elements = return_object->package.elements;
	count = return_object->package.count;

	/* The package must have at least one element, else invalid */

	if (!count) {
		FUNC3((AE_INFO, data->pathname, data->node_flags,
				      "Return Package has no elements (empty)"));

		return (AE_AML_OPERAND_VALUE);
	}

	/*
	 * Decode the type of the expected package contents
	 *
	 * PTYPE1 packages contain no subpackages
	 * PTYPE2 packages contain sub-packages
	 */
	switch (package->ret_info.type) {
	case ACPI_PTYPE1_FIXED:

		/*
		 * The package count is fixed and there are no sub-packages
		 *
		 * If package is too small, exit.
		 * If package is larger than expected, issue warning but continue
		 */
		expected_count =
		    package->ret_info.count1 + package->ret_info.count2;
		if (count < expected_count) {
			goto package_too_small;
		} else if (count > expected_count) {
			FUNC3((AE_INFO, data->pathname,
					      data->node_flags,
					      "Return Package is larger than needed - "
					      "found %u, expected %u", count,
					      expected_count));
		}

		/* Validate all elements of the returned package */

		status = FUNC5(data, elements,
							package->ret_info.
							object_type1,
							package->ret_info.
							count1,
							package->ret_info.
							object_type2,
							package->ret_info.
							count2, 0);
		break;

	case ACPI_PTYPE1_VAR:

		/*
		 * The package count is variable, there are no sub-packages, and all
		 * elements must be of the same type
		 */
		for (i = 0; i < count; i++) {
			status = FUNC4(data, elements,
							   package->ret_info.
							   object_type1, i);
			if (FUNC1(status)) {
				return (status);
			}
			elements++;
		}
		break;

	case ACPI_PTYPE1_OPTION:

		/*
		 * The package count is variable, there are no sub-packages. There are
		 * a fixed number of required elements, and a variable number of
		 * optional elements.
		 *
		 * Check if package is at least as large as the minimum required
		 */
		expected_count = package->ret_info3.count;
		if (count < expected_count) {
			goto package_too_small;
		}

		/* Variable number of sub-objects */

		for (i = 0; i < count; i++) {
			if (i < package->ret_info3.count) {

				/* These are the required package elements (0, 1, or 2) */

				status =
				    FUNC4(data, elements,
							      package->
							      ret_info3.
							      object_type[i],
							      i);
				if (FUNC1(status)) {
					return (status);
				}
			} else {
				/* These are the optional package elements */

				status =
				    FUNC4(data, elements,
							      package->
							      ret_info3.
							      tail_object_type,
							      i);
				if (FUNC1(status)) {
					return (status);
				}
			}
			elements++;
		}
		break;

	case ACPI_PTYPE2_REV_FIXED:

		/* First element is the (Integer) revision */

		status = FUNC4(data, elements,
						   ACPI_RTYPE_INTEGER, 0);
		if (FUNC1(status)) {
			return (status);
		}

		elements++;
		count--;

		/* Examine the sub-packages */

		status =
		    FUNC6(data, package, elements, count);
		break;

	case ACPI_PTYPE2_PKG_COUNT:

		/* First element is the (Integer) count of sub-packages to follow */

		status = FUNC4(data, elements,
						   ACPI_RTYPE_INTEGER, 0);
		if (FUNC1(status)) {
			return (status);
		}

		/*
		 * Count cannot be larger than the parent package length, but allow it
		 * to be smaller. The >= accounts for the Integer above.
		 */
		expected_count = (u32) (*elements)->integer.value;
		if (expected_count >= count) {
			goto package_too_small;
		}

		count = expected_count;
		elements++;

		/* Examine the sub-packages */

		status =
		    FUNC6(data, package, elements, count);
		break;

	case ACPI_PTYPE2:
	case ACPI_PTYPE2_FIXED:
	case ACPI_PTYPE2_MIN:
	case ACPI_PTYPE2_COUNT:

		/*
		 * These types all return a single Package that consists of a
		 * variable number of sub-Packages.
		 *
		 * First, ensure that the first element is a sub-Package. If not,
		 * the BIOS may have incorrectly returned the object as a single
		 * package instead of a Package of Packages (a common error if
		 * there is only one entry). We may be able to repair this by
		 * wrapping the returned Package with a new outer Package.
		 */
		if ((*elements)->common.type != ACPI_TYPE_PACKAGE) {

			/* Create the new outer package and populate it */

			status =
			    FUNC8(data,
							return_object_ptr);
			if (FUNC1(status)) {
				return (status);
			}

			/* Update locals to point to the new package (of 1 element) */

			return_object = *return_object_ptr;
			elements = return_object->package.elements;
			count = 1;
		}

		/* Examine the sub-packages */

		status =
		    FUNC6(data, package, elements, count);
		break;

	default:

		/* Should not get here if predefined info table is correct */

		FUNC3((AE_INFO, data->pathname, data->node_flags,
				      "Invalid internal return type in table entry: %X",
				      package->ret_info.type));

		return (AE_AML_INTERNAL);
	}

	return (status);

package_too_small:

	/* Error exit for the case with an incorrect package count */

	FUNC3((AE_INFO, data->pathname, data->node_flags,
			      "Return Package is too small - found %u elements, expected %u",
			      count, expected_count));

	return (AE_AML_OPERAND_VALUE);
}