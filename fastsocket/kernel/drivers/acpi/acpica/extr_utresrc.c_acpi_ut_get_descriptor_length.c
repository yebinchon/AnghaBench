
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ acpi_ut_get_resource_header_length (void*) ;
 scalar_t__ acpi_ut_get_resource_length (void*) ;

u32 acpi_ut_get_descriptor_length(void *aml)
{
 ACPI_FUNCTION_ENTRY();





 return (acpi_ut_get_resource_length(aml) +
  acpi_ut_get_resource_header_length(aml));
}
