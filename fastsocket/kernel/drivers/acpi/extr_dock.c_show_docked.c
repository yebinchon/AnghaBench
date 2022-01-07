
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int handle; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ platform_data; } ;
struct acpi_device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int PAGE_SIZE ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t show_docked(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct acpi_device *tmp;

 struct dock_station *dock_station = *((struct dock_station **)
  dev->platform_data);

 if (ACPI_SUCCESS(acpi_bus_get_device(dock_station->handle, &tmp)))
  return snprintf(buf, PAGE_SIZE, "1\n");
 return snprintf(buf, PAGE_SIZE, "0\n");
}
