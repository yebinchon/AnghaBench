
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_status ;


 int ACPI_FIXED_HARDWARE_EVENT ;
 int AE_OK ;
 int acpi_device_notify (int *,int ,struct acpi_device*) ;

__attribute__((used)) static acpi_status acpi_device_notify_fixed(void *data)
{
 struct acpi_device *device = data;


 acpi_device_notify(((void*)0), ACPI_FIXED_HARDWARE_EVENT, device);
 return AE_OK;
}
