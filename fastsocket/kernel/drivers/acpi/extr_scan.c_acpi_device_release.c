
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_device {int dummy; } ;


 int acpi_free_ids (struct acpi_device*) ;
 int kfree (struct acpi_device*) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static void acpi_device_release(struct device *dev)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);

 acpi_free_ids(acpi_dev);
 kfree(acpi_dev);
}
