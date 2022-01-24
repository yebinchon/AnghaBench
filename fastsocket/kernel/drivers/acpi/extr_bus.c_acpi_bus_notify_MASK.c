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
struct TYPE_2__ {int /*<<< orphan*/  (* notify ) (struct acpi_device*,int /*<<< orphan*/ ) ;} ;
struct acpi_driver {int flags; TYPE_1__ ops; } ;
struct acpi_device {struct acpi_driver* driver; } ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_DRIVER_ALL_NOTIFY_EVENTS ; 
#define  ACPI_NOTIFY_BUS_CHECK 135 
#define  ACPI_NOTIFY_BUS_MODE_MISMATCH 134 
#define  ACPI_NOTIFY_DEVICE_CHECK 133 
#define  ACPI_NOTIFY_DEVICE_CHECK_LIGHT 132 
#define  ACPI_NOTIFY_DEVICE_WAKE 131 
#define  ACPI_NOTIFY_EJECT_REQUEST 130 
#define  ACPI_NOTIFY_FREQUENCY_MISMATCH 129 
#define  ACPI_NOTIFY_POWER_FAULT 128 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct acpi_device**) ; 
 int /*<<< orphan*/  acpi_bus_notify_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(acpi_handle handle, u32 type, void *data)
{
	struct acpi_device *device = NULL;
	struct acpi_driver *driver;

	FUNC0((ACPI_DB_INFO, "Notification %#02x to handle %p\n",
			  type, handle));

	FUNC4(&acpi_bus_notify_list,
		type, (void *)handle);

	switch (type) {

	case ACPI_NOTIFY_BUS_CHECK:
		FUNC2(handle);
		/*
		 * TBD: We'll need to outsource certain events to non-ACPI
		 *      drivers via the device manager (device.c).
		 */
		break;

	case ACPI_NOTIFY_DEVICE_CHECK:
		FUNC1(handle);
		/*
		 * TBD: We'll need to outsource certain events to non-ACPI
		 *      drivers via the device manager (device.c).
		 */
		break;

	case ACPI_NOTIFY_DEVICE_WAKE:
		/* TBD */
		break;

	case ACPI_NOTIFY_EJECT_REQUEST:
		/* TBD */
		break;

	case ACPI_NOTIFY_DEVICE_CHECK_LIGHT:
		/* TBD: Exactly what does 'light' mean? */
		break;

	case ACPI_NOTIFY_FREQUENCY_MISMATCH:
		/* TBD */
		break;

	case ACPI_NOTIFY_BUS_MODE_MISMATCH:
		/* TBD */
		break;

	case ACPI_NOTIFY_POWER_FAULT:
		/* TBD */
		break;

	default:
		FUNC0((ACPI_DB_INFO,
				  "Received unknown/unsupported notification [%08x]\n",
				  type));
		break;
	}

	FUNC3(handle, &device);
	if (device) {
		driver = device->driver;
		if (driver && driver->ops.notify &&
		    (driver->flags & ACPI_DRIVER_ALL_NOTIFY_EVENTS))
			driver->ops.notify(device, type);
	}
}