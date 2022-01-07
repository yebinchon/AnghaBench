
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_OK ;
 int ev_cmos_region_setup ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_cmos_region_setup(acpi_handle handle,
     u32 function,
     void *handler_context, void **region_context)
{
 ACPI_FUNCTION_TRACE(ev_cmos_region_setup);

 return_ACPI_STATUS(AE_OK);
}
