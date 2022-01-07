
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct acpi_gpe_event_info {int gpe_number; TYPE_1__* register_info; } ;
typedef int acpi_status ;
struct TYPE_2__ {int base_gpe_number; int status_address; } ;


 int ACPI_FUNCTION_ENTRY () ;
 int acpi_hw_write (scalar_t__,int *) ;

acpi_status acpi_hw_clear_gpe(struct acpi_gpe_event_info * gpe_event_info)
{
 acpi_status status;
 u8 register_bit;

 ACPI_FUNCTION_ENTRY();

 register_bit = (u8)(1 <<
       (gpe_event_info->gpe_number -
        gpe_event_info->register_info->base_gpe_number));





 status = acpi_hw_write(register_bit,
          &gpe_event_info->register_info->status_address);

 return (status);
}
