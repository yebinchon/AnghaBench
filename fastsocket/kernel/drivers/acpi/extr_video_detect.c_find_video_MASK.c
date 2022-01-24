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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct acpi_device_id {char* member_0; int /*<<< orphan*/  member_1; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 char* ACPI_VIDEO_HID ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*,struct acpi_device_id const*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static acpi_status
FUNC5(acpi_handle handle, u32 lvl, void *context, void **rv)
{
	long *cap = context;
	struct pci_dev *dev;
	struct acpi_device *acpi_dev;

	const struct acpi_device_id video_ids[] = {
		{ACPI_VIDEO_HID, 0},
		{"", 0},
	};
	if (FUNC0(handle, &acpi_dev))
		return AE_OK;

	if (!FUNC3(acpi_dev, video_ids)) {
		dev = FUNC1(handle);
		if (!dev)
			return AE_OK;
		FUNC4(dev);
		*cap |= FUNC2(acpi_dev);
	}
	return AE_OK;
}