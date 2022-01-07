
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; scalar_t__ handle; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_get_handle (scalar_t__,char*,int *) ;
 int dev_attr_eject ;
 int dev_attr_hid ;
 int dev_attr_modalias ;
 int dev_attr_path ;
 int dev_attr_sun ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static void acpi_device_remove_files(struct acpi_device *dev)
{
 acpi_status status;
 acpi_handle temp;





 status = acpi_get_handle(dev->handle, "_EJ0", &temp);
 if (ACPI_SUCCESS(status))
  device_remove_file(&dev->dev, &dev_attr_eject);

 status = acpi_get_handle(dev->handle, "_SUN", &temp);
 if (ACPI_SUCCESS(status))
  device_remove_file(&dev->dev, &dev_attr_sun);

 device_remove_file(&dev->dev, &dev_attr_modalias);
 device_remove_file(&dev->dev, &dev_attr_hid);
 if (dev->handle)
  device_remove_file(&dev->dev, &dev_attr_path);
}
