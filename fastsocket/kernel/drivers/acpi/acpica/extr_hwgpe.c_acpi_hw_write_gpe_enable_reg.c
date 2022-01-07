
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpe_register_info {int enable_address; int enable_for_run; } ;
struct acpi_gpe_event_info {struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_ENTRY () ;
 int AE_NOT_EXIST ;
 int acpi_hw_write (int ,int *) ;

acpi_status
acpi_hw_write_gpe_enable_reg(struct acpi_gpe_event_info * gpe_event_info)
{
 struct acpi_gpe_register_info *gpe_register_info;
 acpi_status status;

 ACPI_FUNCTION_ENTRY();



 gpe_register_info = gpe_event_info->register_info;
 if (!gpe_register_info) {
  return (AE_NOT_EXIST);
 }



 status = acpi_hw_write(gpe_register_info->enable_for_run,
          &gpe_register_info->enable_address);

 return (status);
}
