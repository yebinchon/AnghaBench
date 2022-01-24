#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct asus_hotk {int dummy; } ;
struct acpi_device {TYPE_1__* driver_data; int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {int ledd_status; int light_level; struct TYPE_4__* name; scalar_t__ light_switch; struct acpi_device* device; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_HOTK_CLASS ; 
 int /*<<< orphan*/  ASUS_HOTK_DEVICE_NAME ; 
 int /*<<< orphan*/  ASUS_LAPTOP_VERSION ; 
 int /*<<< orphan*/  BT_ON ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPS_ON ; 
 int /*<<< orphan*/  LCD_ON ; 
 int /*<<< orphan*/  WL_ON ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int asus_hotk_found ; 
 int /*<<< orphan*/ * bt_switch_handle ; 
 TYPE_1__* hotk ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ kled_set_handle ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ ls_level_handle ; 
 scalar_t__ ls_switch_handle ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wl_switch_handle ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct acpi_device *device)
{
	int result;

	if (!device)
		return -EINVAL;

	FUNC6("Asus Laptop Support version %s\n",
	       ASUS_LAPTOP_VERSION);

	hotk = FUNC5(sizeof(struct asus_hotk), GFP_KERNEL);
	if (!hotk)
		return -ENOMEM;

	hotk->handle = device->handle;
	FUNC11(FUNC1(device), ASUS_HOTK_DEVICE_NAME);
	FUNC11(FUNC0(device), ASUS_HOTK_CLASS);
	device->driver_data = hotk;
	hotk->device = device;

	result = FUNC3();
	if (result)
		goto end;

	FUNC2();

	asus_hotk_found = 1;

	/* WLED and BLED are on by default */
	FUNC12(bt_switch_handle, 1, BT_ON);
	FUNC12(wl_switch_handle, 1, WL_ON);

	/* If the h/w switch is off, we need to check the real status */
	FUNC12(NULL, FUNC7(BT_ON), BT_ON);
	FUNC12(NULL, FUNC7(WL_ON), WL_ON);

	/* LCD Backlight is on by default */
	FUNC12(NULL, 1, LCD_ON);

	/* Keyboard Backlight is on by default */
	if (kled_set_handle)
		FUNC8(1);

	/* LED display is off by default */
	hotk->ledd_status = 0xFFF;

	/* Set initial values of light sensor and level */
	hotk->light_switch = 0;	/* Default to light sensor disabled */
	hotk->light_level = 5;	/* level 5 for sensor sensitivity */

	if (ls_switch_handle)
		FUNC10(hotk->light_switch);

	if (ls_level_handle)
		FUNC9(hotk->light_level);

	/* GPS is on by default */
	FUNC12(NULL, 1, GPS_ON);

end:
	if (result) {
		FUNC4(hotk->name);
		FUNC4(hotk);
	}

	return result;
}