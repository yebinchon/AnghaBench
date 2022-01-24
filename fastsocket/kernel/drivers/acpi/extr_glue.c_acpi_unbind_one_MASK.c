#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * acpi_handle; } ;
struct device {TYPE_2__ archdata; int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_glue_data_handler ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	if (!dev->archdata.acpi_handle)
		return 0;
	if (dev == FUNC2(dev->archdata.acpi_handle)) {
		struct acpi_device *acpi_dev;

		/* acpi_get_physical_device increase refcnt by one */
		FUNC4(dev);

		if (!FUNC0(dev->archdata.acpi_handle,
					&acpi_dev)) {
			FUNC5(&dev->kobj, "firmware_node");
			FUNC5(&acpi_dev->dev.kobj, "physical_node");
		}

		FUNC1(dev->archdata.acpi_handle,
				 acpi_glue_data_handler);
		dev->archdata.acpi_handle = NULL;
		/* acpi_bind_one increase refcnt by one */
		FUNC4(dev);
	} else {
		FUNC3(dev, "Oops, 'acpi_handle' corrupt\n");
	}
	return 0;
}