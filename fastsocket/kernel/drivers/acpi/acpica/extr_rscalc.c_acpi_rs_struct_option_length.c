
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_resource_source {scalar_t__ string_length; scalar_t__ string_ptr; } ;
typedef int acpi_rs_length ;


 int ACPI_FUNCTION_ENTRY () ;

__attribute__((used)) static acpi_rs_length
acpi_rs_struct_option_length(struct acpi_resource_source *resource_source)
{
 ACPI_FUNCTION_ENTRY();






 if (resource_source->string_ptr) {
  return ((acpi_rs_length) (resource_source->string_length + 1));
 }

 return (0);
}
