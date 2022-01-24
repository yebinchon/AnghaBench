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
struct acpi_device {int /*<<< orphan*/  dev; scalar_t__ handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_eject ; 
 int /*<<< orphan*/  dev_attr_hid ; 
 int /*<<< orphan*/  dev_attr_modalias ; 
 int /*<<< orphan*/  dev_attr_path ; 
 int /*<<< orphan*/  dev_attr_sun ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct acpi_device *dev)
{
	acpi_status status;
	acpi_handle temp;

	/*
	 * If device has _EJ0, 'eject' file is created that is used to trigger
	 * hot-removal function from userland.
	 */
	status = FUNC1(dev->handle, "_EJ0", &temp);
	if (FUNC0(status))
		FUNC2(&dev->dev, &dev_attr_eject);

	status = FUNC1(dev->handle, "_SUN", &temp);
	if (FUNC0(status))
		FUNC2(&dev->dev, &dev_attr_sun);

	FUNC2(&dev->dev, &dev_attr_modalias);
	FUNC2(&dev->dev, &dev_attr_hid);
	if (dev->handle)
		FUNC2(&dev->dev, &dev_attr_path);
}