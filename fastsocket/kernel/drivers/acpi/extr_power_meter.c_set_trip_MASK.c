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
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_power_meter_resource {unsigned long* trip; int /*<<< orphan*/  lock; } ;
struct acpi_device {struct acpi_power_meter_resource* driver_data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct acpi_power_meter_resource*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 struct acpi_device* FUNC4 (struct device*) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *devattr,
			const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC5(devattr);
	struct acpi_device *acpi_dev = FUNC4(dev);
	struct acpi_power_meter_resource *resource = acpi_dev->driver_data;
	int res;
	unsigned long temp;

	res = FUNC3(buf, 10, &temp);
	if (res)
		return res;

	temp /= 1000;
	if (temp < 0)
		return -EINVAL;

	FUNC0(&resource->lock);
	resource->trip[attr->index - 7] = temp;
	res = FUNC2(resource);
	FUNC1(&resource->lock);

	if (res)
		return res;

	return count;
}