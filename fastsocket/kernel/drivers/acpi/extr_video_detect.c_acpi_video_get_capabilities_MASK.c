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
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ * acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct acpi_device**) ; 
 char* FUNC4 (struct acpi_device*) ; 
 int acpi_video_caps_checked ; 
 long acpi_video_support ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  find_video ; 

long FUNC6(acpi_handle graphics_handle)
{
	long caps = 0;
	struct acpi_device *tmp_dev;
	acpi_status status;

	if (acpi_video_caps_checked && graphics_handle == NULL)
		return acpi_video_support;

	if (!graphics_handle) {
		/* Only do the global walk through all graphics devices once */
		FUNC5(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
				    ACPI_UINT32_MAX, find_video,
				    &caps, NULL);
		/* There might be boot param flags set already... */
		acpi_video_support |= caps;
		acpi_video_caps_checked = 1;
		/* Add blacklists here. Be careful to use the right *DMI* bits
		 * to still be able to override logic via boot params, e.g.:
		 *
		 *   if (dmi_name_in_vendors("XY")) {
		 *	acpi_video_support |=
		 *		ACPI_VIDEO_OUTPUT_SWITCHING_DMI_VENDOR;
		 *	acpi_video_support |=
		 *		ACPI_VIDEO_BACKLIGHT_DMI_VENDOR;
		 *}
		 */
	} else {
		status = FUNC3(graphics_handle, &tmp_dev);
		if (FUNC2(status)) {
			FUNC1((AE_INFO, status, "Invalid device"));
			return 0;
		}
		FUNC5(ACPI_TYPE_DEVICE, graphics_handle,
				    ACPI_UINT32_MAX, find_video,
				    &caps, NULL);
	}
	FUNC0((ACPI_DB_INFO, "We have 0x%lX video support %s %s\n",
			  graphics_handle ? caps : acpi_video_support,
			  graphics_handle ? "on device " : "in general",
			  graphics_handle ? FUNC4(tmp_dev) : ""));
	return caps;
}