
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct acpi_predefined_data {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_ns_check_object_type (struct acpi_predefined_data*,union acpi_operand_object**,int ,scalar_t__) ;

__attribute__((used)) static acpi_status
acpi_ns_check_package_elements(struct acpi_predefined_data *data,
          union acpi_operand_object **elements,
          u8 type1,
          u32 count1,
          u8 type2, u32 count2, u32 start_index)
{
 union acpi_operand_object **this_element = elements;
 acpi_status status;
 u32 i;






 for (i = 0; i < count1; i++) {
  status = acpi_ns_check_object_type(data, this_element,
         type1, i + start_index);
  if (ACPI_FAILURE(status)) {
   return (status);
  }
  this_element++;
 }

 for (i = 0; i < count2; i++) {
  status = acpi_ns_check_object_type(data, this_element,
         type2,
         (i + count1 + start_index));
  if (ACPI_FAILURE(status)) {
   return (status);
  }
  this_element++;
 }

 return (AE_OK);
}
