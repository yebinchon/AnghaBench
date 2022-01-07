
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_smbus_cmi {int adapter; } ;
struct acpi_device {int * driver_data; } ;


 struct acpi_smbus_cmi* acpi_driver_data (struct acpi_device*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct acpi_smbus_cmi*) ;

__attribute__((used)) static int acpi_smbus_cmi_remove(struct acpi_device *device, int type)
{
 struct acpi_smbus_cmi *smbus_cmi = acpi_driver_data(device);

 i2c_del_adapter(&smbus_cmi->adapter);
 kfree(smbus_cmi);
 device->driver_data = ((void*)0);

 return 0;
}
