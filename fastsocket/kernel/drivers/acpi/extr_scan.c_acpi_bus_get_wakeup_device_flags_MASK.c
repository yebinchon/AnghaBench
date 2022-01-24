#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union acpi_object {int dummy; } acpi_object ;
struct acpi_device_id {char* member_0; int /*<<< orphan*/  member_1; } ;
struct TYPE_6__ {scalar_t__ wake_capable; } ;
struct TYPE_4__ {int valid; int run_wake; } ;
struct TYPE_5__ {TYPE_1__ flags; scalar_t__ prepare_count; } ;
struct acpi_device {TYPE_3__ flags; TYPE_2__ wakeup; int /*<<< orphan*/  handle; } ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*,union acpi_object*) ; 
 int FUNC4 (struct acpi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_device*,struct acpi_device_id*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct acpi_device *device)
{
	acpi_status status = 0;
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *package = NULL;
	int psw_error;

	struct acpi_device_id button_device_ids[] = {
		{"PNP0C0D", 0},
		{"PNP0C0C", 0},
		{"PNP0C0E", 0},
		{"", 0},
	};

	/* _PRW */
	status = FUNC5(device->handle, "_PRW", NULL, &buffer);
	if (FUNC2(status)) {
		FUNC1((AE_INFO, status, "Evaluating _PRW"));
		goto end;
	}

	package = (union acpi_object *)buffer.pointer;
	status = FUNC3(device, package);
	if (FUNC2(status)) {
		FUNC1((AE_INFO, status, "Extracting _PRW package"));
		goto end;
	}

	FUNC7(buffer.pointer);

	device->wakeup.flags.valid = 1;
	device->wakeup.prepare_count = 0;
	/* Call _PSW/_DSW object to disable its ability to wake the sleeping
	 * system for the ACPI device with the _PRW object.
	 * The _PSW object is depreciated in ACPI 3.0 and is replaced by _DSW.
	 * So it is necessary to call _DSW object first. Only when it is not
	 * present will the _PSW object used.
	 */
	psw_error = FUNC4(device, 0, 0, 0);
	if (psw_error)
		FUNC0((ACPI_DB_INFO,
				"error in _DSW or _PSW evaluation\n"));

	/* Power button, Lid switch always enable wakeup */
	if (!FUNC6(device, button_device_ids))
		device->wakeup.flags.run_wake = 1;

end:
	if (FUNC2(status))
		device->flags.wake_capable = 0;
	return 0;
}