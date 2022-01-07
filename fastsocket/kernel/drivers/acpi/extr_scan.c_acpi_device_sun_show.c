
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int handle; } ;
typedef int ssize_t ;


 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t
acpi_device_sun_show(struct device *dev, struct device_attribute *attr,
       char *buf) {
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 unsigned long long sun;
 int result;

 result = acpi_evaluate_integer(acpi_dev->handle, "_SUN", ((void*)0), &sun);
 if (result)
  goto end;

 result = sprintf(buf, "%llu\n", sun);
end:
 return result;
}
