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
union acpi_object {scalar_t__ type; } ;
typedef  scalar_t__ u8 ;
struct acpi_object_list {int dummy; } ;
struct acpi_buffer {scalar_t__ length; int /*<<< orphan*/ * pointer; } ;
typedef  int /*<<< orphan*/  acpi_string ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_object_type ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_object_list*,struct acpi_buffer*,scalar_t__)) ; 
 scalar_t__ ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NULL_OBJECT ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_object_list*,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC7(acpi_handle handle,
			   acpi_string pathname,
			   struct acpi_object_list *external_params,
			   struct acpi_buffer *return_buffer,
			   acpi_object_type return_type)
{
	acpi_status status;
	u8 must_free = FALSE;

	FUNC3(acpi_evaluate_object_typed);

	/* Return buffer must be valid */

	if (!return_buffer) {
		FUNC6(AE_BAD_PARAMETER);
	}

	if (return_buffer->length == ACPI_ALLOCATE_BUFFER) {
		must_free = TRUE;
	}

	/* Evaluate the object */

	status =
	    FUNC4(handle, pathname, external_params,
				 return_buffer);
	if (FUNC1(status)) {
		FUNC6(status);
	}

	/* Type ANY means "don't care" */

	if (return_type == ACPI_TYPE_ANY) {
		FUNC6(AE_OK);
	}

	if (return_buffer->length == 0) {

		/* Error because caller specifically asked for a return value */

		FUNC0((AE_INFO, "No return value"));
		FUNC6(AE_NULL_OBJECT);
	}

	/* Examine the object type returned from evaluate_object */

	if (((union acpi_object *)return_buffer->pointer)->type == return_type) {
		FUNC6(AE_OK);
	}

	/* Return object type does not match requested type */

	FUNC0((AE_INFO,
		    "Incorrect return type [%s] requested [%s]",
		    FUNC5(((union acpi_object *)return_buffer->
					   pointer)->type),
		    FUNC5(return_type)));

	if (must_free) {

		/* Caller used ACPI_ALLOCATE_BUFFER, free the return buffer */

		FUNC2(return_buffer->pointer);
		return_buffer->pointer = NULL;
	}

	return_buffer->length = 0;
	FUNC6(AE_TYPE);
}