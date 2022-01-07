
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_sbs {int dummy; } ;
struct acpi_device {struct acpi_sbs* driver_data; } ;


 int EINVAL ;
 int acpi_sbs_callback (struct acpi_sbs*) ;

__attribute__((used)) static int acpi_sbs_resume(struct acpi_device *device)
{
 struct acpi_sbs *sbs;
 if (!device)
  return -EINVAL;
 sbs = device->driver_data;
 acpi_sbs_callback(sbs);
 return 0;
}
