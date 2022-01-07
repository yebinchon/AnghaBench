
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_handle ;


 int acpi_get_handle (int ,char*,int *) ;

__attribute__((used)) static int acpi_dock_match(struct acpi_device *device)
{
 acpi_handle tmp;
 return acpi_get_handle(device->handle, "_DCK", &tmp);
}
