#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ acpi_handle; } ;
struct device {int /*<<< orphan*/  kobj; TYPE_1__ archdata; } ;
struct TYPE_9__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_8__ {scalar_t__ valid; } ;
struct TYPE_10__ {TYPE_4__ state; TYPE_3__ flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_5__ wakeup; TYPE_2__ dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct acpi_device**) ; 
 int /*<<< orphan*/  acpi_glue_data_handler ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, acpi_handle handle)
{
	struct acpi_device *acpi_dev;
	acpi_status status;

	if (dev->archdata.acpi_handle) {
		FUNC3(dev, "Drivers changed 'acpi_handle'\n");
		return -EINVAL;
	}
	FUNC6(dev);
	status = FUNC1(handle, acpi_glue_data_handler, dev);
	if (FUNC0(status)) {
		FUNC7(dev);
		return -EINVAL;
	}
	dev->archdata.acpi_handle = handle;

	status = FUNC2(handle, &acpi_dev);
	if (!FUNC0(status)) {
		int ret;

		ret = FUNC8(&dev->kobj, &acpi_dev->dev.kobj,
				"firmware_node");
		ret = FUNC8(&acpi_dev->dev.kobj, &dev->kobj,
				"physical_node");
		if (acpi_dev->wakeup.flags.valid) {
			FUNC4(dev, true);
			FUNC5(dev,
						acpi_dev->wakeup.state.enabled);
		}
	}

	return 0;
}