
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_generic_address {scalar_t__ address; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_hw_write (int ,struct acpi_generic_address*) ;

__attribute__((used)) static acpi_status
acpi_hw_write_multiple(u32 value,
         struct acpi_generic_address *register_a,
         struct acpi_generic_address *register_b)
{
 acpi_status status;



 status = acpi_hw_write(value, register_a);
 if (ACPI_FAILURE(status)) {
  return (status);
 }
 if (register_b->address) {
  status = acpi_hw_write(value, register_b);
 }

 return (status);
}
