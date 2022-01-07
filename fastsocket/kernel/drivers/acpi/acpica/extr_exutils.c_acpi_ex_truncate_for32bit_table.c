
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ common; } ;
typedef int acpi_integer ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_UINT32_MAX ;
 int acpi_gbl_integer_byte_width ;

void acpi_ex_truncate_for32bit_table(union acpi_operand_object *obj_desc)
{

 ACPI_FUNCTION_ENTRY();





 if ((!obj_desc) ||
     (ACPI_GET_DESCRIPTOR_TYPE(obj_desc) != ACPI_DESC_TYPE_OPERAND) ||
     (obj_desc->common.type != ACPI_TYPE_INTEGER)) {
  return;
 }

 if (acpi_gbl_integer_byte_width == 4) {




  obj_desc->integer.value &= (acpi_integer) ACPI_UINT32_MAX;
 }
}
