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
struct acpi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  dev_attr_idlecpus ; 
 int /*<<< orphan*/  dev_attr_idlepct ; 
 int /*<<< orphan*/  dev_attr_rrtime ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *device)
{
	int result;

	result = FUNC0(&device->dev, &dev_attr_idlecpus);
	if (result)
		return -ENODEV;
	result = FUNC0(&device->dev, &dev_attr_idlepct);
	if (result) {
		FUNC1(&device->dev, &dev_attr_idlecpus);
		return -ENODEV;
	}
	result = FUNC0(&device->dev, &dev_attr_rrtime);
	if (result) {
		FUNC1(&device->dev, &dev_attr_idlecpus);
		FUNC1(&device->dev, &dev_attr_idlepct);
		return -ENODEV;
	}
	return 0;
}