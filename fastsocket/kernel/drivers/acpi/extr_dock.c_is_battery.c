
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; } ;
struct acpi_device_info {int valid; TYPE_1__ hardware_id; } ;
typedef int acpi_handle ;


 int ACPI_SUCCESS (int ) ;
 int ACPI_VALID_HID ;
 int acpi_get_object_info (int ,struct acpi_device_info**) ;
 int kfree (struct acpi_device_info*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int is_battery(acpi_handle handle)
{
 struct acpi_device_info *info;
 int ret = 1;

 if (!ACPI_SUCCESS(acpi_get_object_info(handle, &info)))
  return 0;
 if (!(info->valid & ACPI_VALID_HID))
  ret = 0;
 else
  ret = !strcmp("PNP0C0A", info->hardware_id.string);

 kfree(info);
 return ret;
}
