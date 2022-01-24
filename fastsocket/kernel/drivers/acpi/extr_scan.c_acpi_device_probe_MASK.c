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
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* remove ) (struct acpi_device*,int /*<<< orphan*/ ) ;scalar_t__ notify; } ;
struct acpi_driver {int /*<<< orphan*/  name; TYPE_1__ ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  bus_id; } ;
struct TYPE_6__ {scalar_t__ acpi_op_start; } ;
struct acpi_device {TYPE_2__ pnp; int /*<<< orphan*/  removal_type; TYPE_3__ bus_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct acpi_device*,struct acpi_driver*) ; 
 int FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC6 (struct device*) ; 
 struct acpi_driver* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device * dev)
{
	struct acpi_device *acpi_dev = FUNC6(dev);
	struct acpi_driver *acpi_drv = FUNC7(dev->driver);
	int ret;

	ret = FUNC1(acpi_dev, acpi_drv);
	if (!ret) {
		if (acpi_dev->bus_ops.acpi_op_start)
			FUNC3(acpi_dev);

		if (acpi_drv->ops.notify) {
			ret = FUNC2(acpi_dev);
			if (ret) {
				if (acpi_drv->ops.remove)
					acpi_drv->ops.remove(acpi_dev,
						     acpi_dev->removal_type);
				return ret;
			}
		}

		FUNC0((ACPI_DB_INFO,
			"Found driver [%s] for device [%s]\n",
			acpi_drv->name, acpi_dev->pnp.bus_id));
		FUNC4(dev);
	}
	return ret;
}