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
struct acpi_sbs {int manager_present; int batteries_supported; int /*<<< orphan*/  hc; struct acpi_device* device; int /*<<< orphan*/  lock; } ;
struct acpi_device {struct acpi_sbs* driver_data; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SBS_CLASS ; 
 int /*<<< orphan*/  ACPI_SBS_DEVICE_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_SBS_BAT ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_sbs*,int) ; 
 int FUNC1 (struct acpi_sbs*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct acpi_sbs*) ; 
 int /*<<< orphan*/  acpi_sbs_callback ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_sbs*) ; 
 struct acpi_sbs* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct acpi_device *device)
{
	struct acpi_sbs *sbs;
	int result = 0;
	int id;

	sbs = FUNC8(sizeof(struct acpi_sbs), GFP_KERNEL);
	if (!sbs) {
		result = -ENOMEM;
		goto end;
	}

	FUNC9(&sbs->lock);

	sbs->hc = FUNC4(device->parent);
	sbs->device = device;
	FUNC10(FUNC3(device), ACPI_SBS_DEVICE_NAME);
	FUNC10(FUNC2(device), ACPI_SBS_CLASS);
	device->driver_data = sbs;

	result = FUNC1(sbs);
	if (result)
		goto end;

	result = FUNC5(sbs);
	if (!result) {
		sbs->manager_present = 1;
		for (id = 0; id < MAX_SBS_BAT; ++id)
			if ((sbs->batteries_supported & (1 << id)))
				FUNC0(sbs, id);
	} else
		FUNC0(sbs, 0);
	FUNC7(sbs->hc, acpi_sbs_callback, sbs);
      end:
	if (result)
		FUNC6(device, 0);
	return result;
}