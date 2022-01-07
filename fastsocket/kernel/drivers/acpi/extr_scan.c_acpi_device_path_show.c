
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int handle; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int ssize_t ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_FULL_PATHNAME ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 int kfree (scalar_t__) ;
 int sprintf (char*,char*,char*) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t
acpi_device_path_show(struct device *dev, struct device_attribute *attr, char *buf) {
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 struct acpi_buffer path = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 int result;

 result = acpi_get_name(acpi_dev->handle, ACPI_FULL_PATHNAME, &path);
 if (result)
  goto end;

 result = sprintf(buf, "%s\n", (char*)path.pointer);
 kfree(path.pointer);
end:
 return result;
}
