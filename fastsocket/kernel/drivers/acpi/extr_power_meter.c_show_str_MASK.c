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
struct acpi_power_meter_resource {char* model_number; char* serial_number; char* oem_info; } ;
struct acpi_device {struct acpi_power_meter_resource* driver_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  char* acpi_string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 struct acpi_device* FUNC2 (struct device*) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			struct device_attribute *devattr,
			char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(devattr);
	struct acpi_device *acpi_dev = FUNC2(dev);
	struct acpi_power_meter_resource *resource = acpi_dev->driver_data;
	acpi_string val;

	switch (attr->index) {
	case 0:
		val = resource->model_number;
		break;
	case 1:
		val = resource->serial_number;
		break;
	case 2:
		val = resource->oem_info;
		break;
	default:
		FUNC0();
	}

	return FUNC1(buf, "%s\n", val);
}