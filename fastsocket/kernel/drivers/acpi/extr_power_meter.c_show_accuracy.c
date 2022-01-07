
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int accuracy; } ;
struct acpi_power_meter_resource {TYPE_1__ caps; } ;
struct acpi_device {struct acpi_power_meter_resource* driver_data; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned int,unsigned int) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t show_accuracy(struct device *dev,
        struct device_attribute *devattr,
        char *buf)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 struct acpi_power_meter_resource *resource = acpi_dev->driver_data;
 unsigned int acc = resource->caps.accuracy;

 return sprintf(buf, "%u.%u%%\n", acc / 1000, acc % 1000);
}
