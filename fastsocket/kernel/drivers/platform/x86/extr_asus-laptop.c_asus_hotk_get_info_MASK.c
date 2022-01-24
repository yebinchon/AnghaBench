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
struct TYPE_5__ {char* pointer; } ;
struct TYPE_4__ {char* pointer; } ;
union acpi_object {int type; TYPE_2__ buffer; TYPE_1__ string; } ;
typedef  char* uint ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_6__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
#define  ACPI_TYPE_BUFFER 129 
#define  ACPI_TYPE_STRING 128 
 int AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long long BT_HWRS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long long WL_HWRS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asus_info ; 
 int /*<<< orphan*/  brightness_get ; 
 int /*<<< orphan*/  brightness_set ; 
 int /*<<< orphan*/  bt_switch ; 
 int /*<<< orphan*/  display_get ; 
 int /*<<< orphan*/  display_set ; 
 int /*<<< orphan*/  gled_set ; 
 int /*<<< orphan*/  gps_off ; 
 int /*<<< orphan*/  gps_on ; 
 int /*<<< orphan*/  gps_status ; 
 TYPE_3__* hotk ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*) ; 
 int /*<<< orphan*/  kled_get ; 
 int /*<<< orphan*/  kled_set ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lcd_switch ; 
 int /*<<< orphan*/  ledd_set ; 
 int /*<<< orphan*/  ls_level ; 
 int /*<<< orphan*/  ls_switch ; 
 int /*<<< orphan*/  mled_set ; 
 int /*<<< orphan*/  pled_set ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  rled_set ; 
 int /*<<< orphan*/  tled_set ; 
 int /*<<< orphan*/  wapf ; 
 int /*<<< orphan*/  wireless_status ; 
 int /*<<< orphan*/  wl_switch ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *model = NULL;
	unsigned long long bsts_result, hwrs_result;
	char *string = NULL;
	acpi_status status;

	/*
	 * Get DSDT headers early enough to allow for differentiating between
	 * models, but late enough to allow acpi_bus_register_driver() to fail
	 * before doing anything ACPI-specific. Should we encounter a machine,
	 * which needs special handling (i.e. its hotkey device has a different
	 * HID), this bit will be moved. A global variable asus_info contains
	 * the DSDT header.
	 */
	status = FUNC3(ACPI_SIG_DSDT, 1, &asus_info);
	if (FUNC0(status))
		FUNC8("Couldn't get the DSDT table header\n");

	/* We have to write 0 on init this far for all ASUS models */
	if (FUNC9(hotk->handle, "INIT", 0, &buffer)) {
		FUNC6("Hotkey initialization failed\n");
		return -ENODEV;
	}

	/* This needs to be called for some laptops to init properly */
	status =
	    FUNC2(hotk->handle, "BSTS", NULL, &bsts_result);
	if (FUNC0(status))
		FUNC8("Error calling BSTS\n");
	else if (bsts_result)
		FUNC7("BSTS called, 0x%02x returned\n",
		       (uint) bsts_result);

	/* This too ... */
	FUNC9(hotk->handle, "CWAP", wapf, NULL);

	/*
	 * Try to match the object returned by INIT to the specific model.
	 * Handle every possible object (or the lack of thereof) the DSDT
	 * writers might throw at us. When in trouble, we pass NULL to
	 * asus_model_match() and try something completely different.
	 */
	if (buffer.pointer) {
		model = buffer.pointer;
		switch (model->type) {
		case ACPI_TYPE_STRING:
			string = model->string.pointer;
			break;
		case ACPI_TYPE_BUFFER:
			string = model->buffer.pointer;
			break;
		default:
			string = "";
			break;
		}
	}
	hotk->name = FUNC5(string, GFP_KERNEL);
	if (!hotk->name)
		return -ENOMEM;

	if (*string)
		FUNC7("  %s model detected\n", string);

	FUNC1(mled_set);
	FUNC1(tled_set);
	FUNC1(rled_set);
	FUNC1(pled_set);
	FUNC1(gled_set);

	FUNC1(ledd_set);

	FUNC1(kled_set);
	FUNC1(kled_get);

	/*
	 * The HWRS method return informations about the hardware.
	 * 0x80 bit is for WLAN, 0x100 for Bluetooth.
	 * The significance of others is yet to be found.
	 * If we don't find the method, we assume the device are present.
	 */
	status =
	    FUNC2(hotk->handle, "HRWS", NULL, &hwrs_result);
	if (FUNC0(status))
		hwrs_result = WL_HWRS | BT_HWRS;

	if (hwrs_result & WL_HWRS)
		FUNC1(wl_switch);
	if (hwrs_result & BT_HWRS)
		FUNC1(bt_switch);

	FUNC1(wireless_status);

	FUNC1(brightness_set);
	FUNC1(brightness_get);

	FUNC1(lcd_switch);

	FUNC1(display_set);
	FUNC1(display_get);

	/*
	 * There is a lot of models with "ALSL", but a few get
	 * a real light sens, so we need to check it.
	 */
	if (!FUNC1(ls_switch))
		FUNC1(ls_level);

	FUNC1(gps_on);
	FUNC1(gps_off);
	FUNC1(gps_status);

	FUNC4(model);

	return AE_OK;
}