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
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 long ACPI_VIDEO_DEVICE_POSTING ; 
 long ACPI_VIDEO_OUTPUT_SWITCHING ; 
 long ACPI_VIDEO_ROM_AVAILABLE ; 
 int /*<<< orphan*/  acpi_backlight_cap_match ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 

long FUNC3(struct acpi_device *device)
{
	acpi_handle h_dummy;
	long video_caps = 0;

	if (!device)
		return 0;

	/* Does this device able to support video switching ? */
	if (FUNC0(FUNC1(device->handle, "_DOD", &h_dummy)) ||
	    FUNC0(FUNC1(device->handle, "_DOS", &h_dummy)))
		video_caps |= ACPI_VIDEO_OUTPUT_SWITCHING;

	/* Does this device able to retrieve a video ROM ? */
	if (FUNC0(FUNC1(device->handle, "_ROM", &h_dummy)))
		video_caps |= ACPI_VIDEO_ROM_AVAILABLE;

	/* Does this device able to configure which video head to be POSTed ? */
	if (FUNC0(FUNC1(device->handle, "_VPO", &h_dummy)) &&
	    FUNC0(FUNC1(device->handle, "_GPD", &h_dummy)) &&
	    FUNC0(FUNC1(device->handle, "_SPD", &h_dummy)))
		video_caps |= ACPI_VIDEO_DEVICE_POSTING;

	/* Only check for backlight functionality if one of the above hit. */
	if (video_caps)
		FUNC2(ACPI_TYPE_DEVICE, device->handle,
				    ACPI_UINT32_MAX, acpi_backlight_cap_match,
				    &video_caps, NULL);

	return video_caps;
}