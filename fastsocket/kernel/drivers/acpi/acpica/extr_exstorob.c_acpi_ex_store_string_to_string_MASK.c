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
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/  pointer; } ;
struct TYPE_3__ {int flags; } ;
union acpi_operand_object {TYPE_2__ string; TYPE_1__ common; } ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_STATIC_POINTER ; 
 int buffer ; 
 int /*<<< orphan*/  ex_store_string_to_string ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int u8 ; 

acpi_status
FUNC7(union acpi_operand_object *source_desc,
			       union acpi_operand_object *target_desc)
{
	u32 length;
	u8 *buffer;

	FUNC3(ex_store_string_to_string, source_desc);

	/* If Source and Target are the same, just return */

	if (source_desc == target_desc) {
		FUNC6(AE_OK);
	}

	/* We know that source_desc is a string by now */

	buffer = FUNC1(u8, source_desc->string.pointer);
	length = source_desc->string.length;

	/*
	 * Replace existing string value if it will fit and the string
	 * pointer is not a static pointer (part of an ACPI table)
	 */
	if ((length < target_desc->string.length) &&
	    (!(target_desc->common.flags & AOPOBJ_STATIC_POINTER))) {
		/*
		 * String will fit in existing non-static buffer.
		 * Clear old string and copy in the new one
		 */
		FUNC5(target_desc->string.pointer, 0,
			    (acpi_size) target_desc->string.length + 1);
		FUNC4(target_desc->string.pointer, buffer, length);
	} else {
		/*
		 * Free the current buffer, then allocate a new buffer
		 * large enough to hold the value
		 */
		if (target_desc->string.pointer &&
		    (!(target_desc->common.flags & AOPOBJ_STATIC_POINTER))) {

			/* Only free if not a pointer into the DSDT */

			FUNC2(target_desc->string.pointer);
		}

		target_desc->string.pointer = FUNC0((acpi_size)
								   length + 1);
		if (!target_desc->string.pointer) {
			FUNC6(AE_NO_MEMORY);
		}

		target_desc->common.flags &= ~AOPOBJ_STATIC_POINTER;
		FUNC4(target_desc->string.pointer, buffer, length);
	}

	/* Set the new target length */

	target_desc->string.length = length;
	FUNC6(AE_OK);
}