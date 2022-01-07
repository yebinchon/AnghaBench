
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_generic_address {scalar_t__ address; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_hw_read (int*,struct acpi_generic_address*) ;

__attribute__((used)) static acpi_status
acpi_hw_read_multiple(u32 *value,
        struct acpi_generic_address *register_a,
        struct acpi_generic_address *register_b)
{
 u32 value_a = 0;
 u32 value_b = 0;
 acpi_status status;



 status = acpi_hw_read(&value_a, register_a);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 if (register_b->address) {
  status = acpi_hw_read(&value_b, register_b);
  if (ACPI_FAILURE(status)) {
   return (status);
  }
 }
 *value = (value_a | value_b);
 return (AE_OK);
}
