
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_gpe_register_info {int base_gpe_number; int enable_address; } ;
struct acpi_gpe_event_info {int gpe_number; struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;


 int ACPI_CLEAR_BIT (int,int) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_NOT_EXIST ;
 int acpi_hw_read (int*,int *) ;
 int acpi_hw_write (int,int *) ;

acpi_status acpi_hw_low_disable_gpe(struct acpi_gpe_event_info *gpe_event_info)
{
 struct acpi_gpe_register_info *gpe_register_info;
 acpi_status status;
 u32 enable_mask;



 gpe_register_info = gpe_event_info->register_info;
 if (!gpe_register_info) {
  return (AE_NOT_EXIST);
 }



 status = acpi_hw_read(&enable_mask, &gpe_register_info->enable_address);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 ACPI_CLEAR_BIT(enable_mask, ((u32)1 <<
         (gpe_event_info->gpe_number -
          gpe_register_info->base_gpe_number)));



 status = acpi_hw_write(enable_mask, &gpe_register_info->enable_address);
 return (status);
}
