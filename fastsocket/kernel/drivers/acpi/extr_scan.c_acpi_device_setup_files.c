
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; scalar_t__ handle; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_evaluate_integer (scalar_t__,char*,int *,unsigned long long*) ;
 int acpi_get_handle (scalar_t__,char*,int *) ;
 int dev_attr_eject ;
 int dev_attr_hid ;
 int dev_attr_modalias ;
 int dev_attr_path ;
 int dev_attr_sun ;
 int device_create_file (int *,int *) ;

__attribute__((used)) static int acpi_device_setup_files(struct acpi_device *dev)
{
 acpi_status status;
 acpi_handle temp;
 unsigned long long sun;
 int result = 0;




 if (dev->handle) {
  result = device_create_file(&dev->dev, &dev_attr_path);
  if (result)
   goto end;
 }

 result = device_create_file(&dev->dev, &dev_attr_hid);
 if (result)
  goto end;

 result = device_create_file(&dev->dev, &dev_attr_modalias);
 if (result)
  goto end;

 status = acpi_evaluate_integer(dev->handle, "_SUN", ((void*)0), &sun);
 if (ACPI_SUCCESS(status)) {
  result = device_create_file(&dev->dev, &dev_attr_sun);
  if (result)
   goto end;
 }





 status = acpi_get_handle(dev->handle, "_EJ0", &temp);
 if (ACPI_SUCCESS(status))
  result = device_create_file(&dev->dev, &dev_attr_eject);
end:
 return result;
}
