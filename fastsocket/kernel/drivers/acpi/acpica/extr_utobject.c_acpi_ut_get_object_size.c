
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int acpi_ut_get_package_object_size (union acpi_operand_object*,int *) ;
 int acpi_ut_get_simple_object_size (union acpi_operand_object*,int *) ;

acpi_status
acpi_ut_get_object_size(union acpi_operand_object *internal_object,
   acpi_size * obj_length)
{
 acpi_status status;

 ACPI_FUNCTION_ENTRY();

 if ((ACPI_GET_DESCRIPTOR_TYPE(internal_object) ==
      ACPI_DESC_TYPE_OPERAND)
     && (internal_object->common.type == ACPI_TYPE_PACKAGE)) {
  status =
      acpi_ut_get_package_object_size(internal_object,
          obj_length);
 } else {
  status =
      acpi_ut_get_simple_object_size(internal_object, obj_length);
 }

 return (status);
}
