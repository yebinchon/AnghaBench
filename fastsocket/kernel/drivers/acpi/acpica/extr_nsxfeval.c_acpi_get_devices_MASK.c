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
struct acpi_get_devices_info {char const* hid; scalar_t__ user_function; void* context; } ;
typedef  scalar_t__ acpi_walk_callback ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (char const*,scalar_t__,void*,void**)) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  ACPI_NS_WALK_UNLOCK ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  acpi_ns_get_device_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_get_devices_info*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC6(const char *HID,
		 acpi_walk_callback user_function,
		 void *context, void **return_value)
{
	acpi_status status;
	struct acpi_get_devices_info info;

	FUNC1(acpi_get_devices);

	/* Parameter validation */

	if (!user_function) {
		FUNC5(AE_BAD_PARAMETER);
	}

	/*
	 * We're going to call their callback from OUR callback, so we need
	 * to know what it is, and their context parameter.
	 */
	info.hid = HID;
	info.context = context;
	info.user_function = user_function;

	/*
	 * Lock the namespace around the walk.
	 * The namespace will be unlocked/locked around each call
	 * to the user function - since this function
	 * must be allowed to make Acpi calls itself.
	 */
	status = FUNC3(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		FUNC5(status);
	}

	status = FUNC2(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
					ACPI_UINT32_MAX, ACPI_NS_WALK_UNLOCK,
					acpi_ns_get_device_callback, &info,
					return_value);

	(void)FUNC4(ACPI_MTX_NAMESPACE);
	FUNC5(status);
}