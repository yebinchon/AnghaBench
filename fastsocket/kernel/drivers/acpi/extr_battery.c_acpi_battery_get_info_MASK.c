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
struct acpi_buffer {int /*<<< orphan*/  pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct acpi_battery {int /*<<< orphan*/  lock; TYPE_1__* device; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int FUNC5 (struct acpi_battery*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  info_offsets ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct acpi_battery *battery)
{
	int result = -EFAULT;
	acpi_status status = 0;
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };

	if (!FUNC3(battery))
		return 0;
	FUNC7(&battery->lock);
	status = FUNC4(battery->device->handle, "_BIF",
				      NULL, &buffer);
	FUNC8(&battery->lock);

	if (FUNC1(status)) {
		FUNC0((AE_INFO, status, "Evaluating _BIF"));
		return -ENODEV;
	}

	result = FUNC5(battery, buffer.pointer,
				 info_offsets, FUNC2(info_offsets));
	FUNC6(buffer.pointer);
	return result;
}