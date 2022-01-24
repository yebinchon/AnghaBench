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
struct acpi_buffer {int /*<<< orphan*/  pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  void* acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  ACPI_FULL_PATHNAME ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static acpi_status FUNC3(acpi_handle handle, u32 level, void *context,
				void **return_value)
{
	acpi_status status;
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	status = FUNC0(handle, ACPI_FULL_PATHNAME, &buffer);
	if (FUNC2(buffer.pointer, context) != NULL) {
		*return_value = handle;
		FUNC1(buffer.pointer);
		return AE_CTRL_TERMINATE;
	}
	return AE_OK;
}