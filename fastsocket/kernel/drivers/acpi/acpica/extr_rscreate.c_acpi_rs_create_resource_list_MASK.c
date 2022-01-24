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
struct TYPE_2__ {int /*<<< orphan*/ * pointer; int /*<<< orphan*/  length; } ;
union acpi_operand_object {TYPE_1__ buffer; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_buffer {scalar_t__ length; void* pointer; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_rs_convert_aml_to_resources ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_create_resource_list ; 

acpi_status
FUNC7(union acpi_operand_object *aml_buffer,
			     struct acpi_buffer *output_buffer)
{

	acpi_status status;
	u8 *aml_start;
	acpi_size list_size_needed = 0;
	u32 aml_buffer_length;
	void *resource;

	FUNC2(rs_create_resource_list);

	FUNC0((ACPI_DB_INFO, "AmlBuffer = %p\n", aml_buffer));

	/* Params already validated, so we don't re-validate here */

	aml_buffer_length = aml_buffer->buffer.length;
	aml_start = aml_buffer->buffer.pointer;

	/*
	 * Pass the aml_buffer into a module that can calculate
	 * the buffer size needed for the linked list
	 */
	status = FUNC3(aml_start, aml_buffer_length,
					 &list_size_needed);

	FUNC0((ACPI_DB_INFO, "Status=%X ListSizeNeeded=%X\n",
			  status, (u32) list_size_needed));
	if (FUNC1(status)) {
		FUNC6(status);
	}

	/* Validate/Allocate/Clear caller buffer */

	status = FUNC4(output_buffer, list_size_needed);
	if (FUNC1(status)) {
		FUNC6(status);
	}

	/* Do the conversion */

	resource = output_buffer->pointer;
	status = FUNC5(aml_start, aml_buffer_length,
					    acpi_rs_convert_aml_to_resources,
					    &resource);
	if (FUNC1(status)) {
		FUNC6(status);
	}

	FUNC0((ACPI_DB_INFO, "OutputBuffer %p Length %X\n",
			  output_buffer->pointer, (u32) output_buffer->length));
	FUNC6(AE_OK);
}