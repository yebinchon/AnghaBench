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
struct TYPE_7__ {int type; scalar_t__ count1; scalar_t__ count2; int /*<<< orphan*/  object_type1; int /*<<< orphan*/  object_type2; } ;
struct TYPE_5__ {scalar_t__ count; int /*<<< orphan*/ * object_type; } ;
union acpi_predefined_info {TYPE_3__ ret_info; TYPE_1__ ret_info2; } ;
struct TYPE_8__ {scalar_t__ count; union acpi_operand_object** elements; } ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_4__ package; TYPE_2__ integer; } ;
typedef  scalar_t__ u32 ;
struct acpi_predefined_data {int /*<<< orphan*/  node_flags; int /*<<< orphan*/  pathname; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_PTYPE2 133 
#define  ACPI_PTYPE2_COUNT 132 
#define  ACPI_PTYPE2_FIXED 131 
#define  ACPI_PTYPE2_MIN 130 
#define  ACPI_PTYPE2_PKG_COUNT 129 
#define  ACPI_PTYPE2_REV_FIXED 128 
 int /*<<< orphan*/  ACPI_RTYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_RTYPE_PACKAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_OPERAND_VALUE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_predefined_data*,union acpi_operand_object**,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_predefined_data*,union acpi_operand_object**,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static acpi_status
FUNC4(struct acpi_predefined_data *data,
			   const union acpi_predefined_info *package,
			   union acpi_operand_object **elements, u32 count)
{
	union acpi_operand_object *sub_package;
	union acpi_operand_object **sub_elements;
	acpi_status status;
	u32 expected_count;
	u32 i;
	u32 j;

	/*
	 * Validate each sub-Package in the parent Package
	 *
	 * NOTE: assumes list of sub-packages contains no NULL elements.
	 * Any NULL elements should have been removed by earlier call
	 * to acpi_ns_remove_null_elements.
	 */
	for (i = 0; i < count; i++) {
		sub_package = *elements;
		sub_elements = sub_package->package.elements;

		/* Each sub-object must be of type Package */

		status = FUNC2(data, &sub_package,
						   ACPI_RTYPE_PACKAGE, i);
		if (FUNC0(status)) {
			return (status);
		}

		/* Examine the different types of expected sub-packages */

		switch (package->ret_info.type) {
		case ACPI_PTYPE2:
		case ACPI_PTYPE2_PKG_COUNT:
		case ACPI_PTYPE2_REV_FIXED:

			/* Each subpackage has a fixed number of elements */

			expected_count =
			    package->ret_info.count1 + package->ret_info.count2;
			if (sub_package->package.count < expected_count) {
				goto package_too_small;
			}

			status =
			    FUNC3(data, sub_elements,
							   package->ret_info.
							   object_type1,
							   package->ret_info.
							   count1,
							   package->ret_info.
							   object_type2,
							   package->ret_info.
							   count2, 0);
			if (FUNC0(status)) {
				return (status);
			}
			break;

		case ACPI_PTYPE2_FIXED:

			/* Each sub-package has a fixed length */

			expected_count = package->ret_info2.count;
			if (sub_package->package.count < expected_count) {
				goto package_too_small;
			}

			/* Check the type of each sub-package element */

			for (j = 0; j < expected_count; j++) {
				status =
				    FUNC2(data,
							      &sub_elements[j],
							      package->
							      ret_info2.
							      object_type[j],
							      j);
				if (FUNC0(status)) {
					return (status);
				}
			}
			break;

		case ACPI_PTYPE2_MIN:

			/* Each sub-package has a variable but minimum length */

			expected_count = package->ret_info.count1;
			if (sub_package->package.count < expected_count) {
				goto package_too_small;
			}

			/* Check the type of each sub-package element */

			status =
			    FUNC3(data, sub_elements,
							   package->ret_info.
							   object_type1,
							   sub_package->package.
							   count, 0, 0, 0);
			if (FUNC0(status)) {
				return (status);
			}
			break;

		case ACPI_PTYPE2_COUNT:

			/*
			 * First element is the (Integer) count of elements, including
			 * the count field.
			 */
			status = FUNC2(data, sub_elements,
							   ACPI_RTYPE_INTEGER,
							   0);
			if (FUNC0(status)) {
				return (status);
			}

			/*
			 * Make sure package is large enough for the Count and is
			 * is as large as the minimum size
			 */
			expected_count = (u32)(*sub_elements)->integer.value;
			if (sub_package->package.count < expected_count) {
				goto package_too_small;
			}
			if (sub_package->package.count <
			    package->ret_info.count1) {
				expected_count = package->ret_info.count1;
				goto package_too_small;
			}

			/* Check the type of each sub-package element */

			status =
			    FUNC3(data,
							   (sub_elements + 1),
							   package->ret_info.
							   object_type1,
							   (expected_count - 1),
							   0, 0, 1);
			if (FUNC0(status)) {
				return (status);
			}
			break;

		default:	/* Should not get here, type was validated by caller */

			return (AE_AML_INTERNAL);
		}

		elements++;
	}

	return (AE_OK);

package_too_small:

	/* The sub-package count was smaller than required */

	FUNC1((AE_INFO, data->pathname, data->node_flags,
			      "Return Sub-Package[%u] is too small - found %u elements, expected %u",
			      i, sub_package->package.count, expected_count));

	return (AE_AML_OPERAND_VALUE);
}