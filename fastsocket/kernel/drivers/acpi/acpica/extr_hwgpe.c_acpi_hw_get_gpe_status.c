
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_gpe_register_info {int base_gpe_number; int enable_for_run; int enable_for_wake; int status_address; } ;
struct acpi_gpe_event_info {int gpe_number; struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;
typedef int acpi_event_status ;


 int ACPI_EVENT_FLAG_ENABLED ;
 int ACPI_EVENT_FLAG_SET ;
 int ACPI_EVENT_FLAG_WAKE_ENABLED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_BAD_PARAMETER ;
 int acpi_hw_read (int*,int *) ;

acpi_status
acpi_hw_get_gpe_status(struct acpi_gpe_event_info * gpe_event_info,
         acpi_event_status * event_status)
{
 u32 in_byte;
 u8 register_bit;
 struct acpi_gpe_register_info *gpe_register_info;
 acpi_status status;
 acpi_event_status local_event_status = 0;

 ACPI_FUNCTION_ENTRY();

 if (!event_status) {
  return (AE_BAD_PARAMETER);
 }



 gpe_register_info = gpe_event_info->register_info;



 register_bit = (u8)(1 <<
       (gpe_event_info->gpe_number -
        gpe_event_info->register_info->base_gpe_number));



 if (register_bit & gpe_register_info->enable_for_run) {
  local_event_status |= ACPI_EVENT_FLAG_ENABLED;
 }



 if (register_bit & gpe_register_info->enable_for_wake) {
  local_event_status |= ACPI_EVENT_FLAG_WAKE_ENABLED;
 }



 status = acpi_hw_read(&in_byte, &gpe_register_info->status_address);
 if (ACPI_FAILURE(status)) {
  goto unlock_and_exit;
 }

 if (register_bit & in_byte) {
  local_event_status |= ACPI_EVENT_FLAG_SET;
 }



 (*event_status) = local_event_status;

      unlock_and_exit:
 return (status);
}
