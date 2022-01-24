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
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct acpi_driver {int /*<<< orphan*/  ids; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC1 (struct device*) ; 
 struct acpi_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct acpi_device *acpi_dev = FUNC1(dev);
	struct acpi_driver *acpi_drv = FUNC2(drv);

	return !FUNC0(acpi_dev, acpi_drv->ids);
}