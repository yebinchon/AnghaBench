
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_res_list {int resource_type; int end; scalar_t__ start; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;
typedef scalar_t__ acpi_physical_address ;
 int AE_OK ;
 int acpi_res_list_del (struct acpi_res_list*) ;
 int acpi_res_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

acpi_status
acpi_os_invalidate_address(
    u8 space_id,
    acpi_physical_address address,
    acpi_size length)
{
 struct acpi_res_list res;

 switch (space_id) {
 case 129:
 case 128:


  res.start = address;
  res.end = address + length - 1;
  res.resource_type = space_id;
  spin_lock(&acpi_res_lock);
  acpi_res_list_del(&res);
  spin_unlock(&acpi_res_lock);
  break;
 case 131:
 case 134:
 case 130:
 case 136:
 case 132:
 case 135:
 case 133:
  break;
 }
 return AE_OK;
}
