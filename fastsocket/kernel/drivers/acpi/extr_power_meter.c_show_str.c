
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_power_meter_resource {char* model_number; char* serial_number; char* oem_info; } ;
struct acpi_device {struct acpi_power_meter_resource* driver_data; } ;
typedef int ssize_t ;
typedef char* acpi_string ;


 int BUG () ;
 int sprintf (char*,char*,char*) ;
 struct acpi_device* to_acpi_device (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_str(struct device *dev,
   struct device_attribute *devattr,
   char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct acpi_device *acpi_dev = to_acpi_device(dev);
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
  BUG();
 }

 return sprintf(buf, "%s\n", val);
}
