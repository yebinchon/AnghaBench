
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_REGION_DEACTIVATE ;
 int AE_OK ;

__attribute__((used)) static acpi_status acpi_atlas_button_setup(acpi_handle region_handle,
      u32 function, void *handler_context, void **return_context)
{
 *return_context =
  (function != ACPI_REGION_DEACTIVATE) ? handler_context : ((void*)0);

 return AE_OK;
}
