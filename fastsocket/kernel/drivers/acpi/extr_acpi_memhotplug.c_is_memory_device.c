
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* string; } ;
struct acpi_device_info {int valid; TYPE_1__ hardware_id; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_MEMORY_DEVICE_HID ;
 int ACPI_VALID_HID ;
 int AE_ERROR ;
 int acpi_get_object_info (int ,struct acpi_device_info**) ;
 int kfree (struct acpi_device_info*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static acpi_status is_memory_device(acpi_handle handle)
{
 char *hardware_id;
 acpi_status status;
 struct acpi_device_info *info;

 status = acpi_get_object_info(handle, &info);
 if (ACPI_FAILURE(status))
  return status;

 if (!(info->valid & ACPI_VALID_HID)) {
  kfree(info);
  return AE_ERROR;
 }

 hardware_id = info->hardware_id.string;
 if ((hardware_id == ((void*)0)) ||
     (strcmp(hardware_id, ACPI_MEMORY_DEVICE_HID)))
  status = AE_ERROR;

 kfree(info);
 return status;
}
