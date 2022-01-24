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
struct TYPE_2__ {char* pointer; } ;
union acpi_object {TYPE_1__ string; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*) ; 

acpi_status
FUNC5(acpi_handle handle, acpi_handle *ejd)
{
	acpi_status status;
	acpi_handle tmp;
	struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER, NULL};
	union acpi_object *obj;

	status = FUNC3(handle, "_EJD", &tmp);
	if (FUNC0(status))
		return status;

	status = FUNC2(handle, "_EJD", NULL, &buffer);
	if (FUNC1(status)) {
		obj = buffer.pointer;
		status = FUNC3(ACPI_ROOT_OBJECT, obj->string.pointer,
					 ejd);
		FUNC4(buffer.pointer);
	}
	return status;
}