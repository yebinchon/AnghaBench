
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_physical_address ;
typedef int acpi_integer ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_OK ;
 int ex_cmos_space_handler ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_cmos_space_handler(u32 function,
      acpi_physical_address address,
      u32 bit_width,
      acpi_integer * value,
      void *handler_context, void *region_context)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ex_cmos_space_handler);

 return_ACPI_STATUS(status);
}
