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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {char* string; } ;
struct acpi_device_info {int valid; TYPE_1__ hardware_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SYSTEM_NOTIFY ; 
 int ACPI_VALID_HID ; 
 int /*<<< orphan*/  AE_OK ; 
#define  INSTALL_NOTIFY_HANDLER 129 
#define  UNINSTALL_NOTIFY_HANDLER 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct acpi_device_info**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  container_notify_cb ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device_info*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static acpi_status
FUNC6(acpi_handle handle,
			    u32 lvl, void *context, void **rv)
{
	char *hid = NULL;
	struct acpi_device_info *info;
	acpi_status status;
	int *action = context;

	status = FUNC1(handle, &info);
	if (FUNC0(status)) {
		return AE_OK;
	}

	if (info->valid & ACPI_VALID_HID)
		hid = info->hardware_id.string;

	if (hid == NULL) {
		goto end;
	}

	if (FUNC5(hid, "ACPI0004") && FUNC5(hid, "PNP0A05") &&
	    FUNC5(hid, "PNP0A06")) {
		goto end;
	}

	switch (*action) {
	case INSTALL_NOTIFY_HANDLER:
		FUNC2(handle,
					    ACPI_SYSTEM_NOTIFY,
					    container_notify_cb, NULL);
		break;
	case UNINSTALL_NOTIFY_HANDLER:
		FUNC3(handle,
					   ACPI_SYSTEM_NOTIFY,
					   container_notify_cb);
		break;
	default:
		break;
	}

      end:
	FUNC4(info);

	return AE_OK;
}