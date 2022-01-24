#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct acpi_resource {int dummy; } ;
struct acpi_buffer {scalar_t__ length; int /*<<< orphan*/  pointer; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_resource*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_create_aml_resources ; 

acpi_status
FUNC8(struct acpi_resource *linked_list_buffer,
			     struct acpi_buffer *output_buffer)
{
	acpi_status status;
	acpi_size aml_size_needed = 0;

	FUNC2(rs_create_aml_resources);

	FUNC0((ACPI_DB_INFO, "LinkedListBuffer = %p\n",
			  linked_list_buffer));

	/*
	 * Params already validated, so we don't re-validate here
	 *
	 * Pass the linked_list_buffer into a module that calculates
	 * the buffer size needed for the byte stream.
	 */
	status = FUNC5(linked_list_buffer, &aml_size_needed);

	FUNC0((ACPI_DB_INFO, "AmlSizeNeeded=%X, %s\n",
			  (u32) aml_size_needed,
			  FUNC3(status)));
	if (FUNC1(status)) {
		FUNC7(status);
	}

	/* Validate/Allocate/Clear caller buffer */

	status = FUNC6(output_buffer, aml_size_needed);
	if (FUNC1(status)) {
		FUNC7(status);
	}

	/* Do the conversion */

	status =
	    FUNC4(linked_list_buffer,
					     aml_size_needed,
					     output_buffer->pointer);
	if (FUNC1(status)) {
		FUNC7(status);
	}

	FUNC0((ACPI_DB_INFO, "OutputBuffer %p Length %X\n",
			  output_buffer->pointer, (u32) output_buffer->length));
	FUNC7(AE_OK);
}