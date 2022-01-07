
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bit_length; } ;
union acpi_operand_object {TYPE_1__ common_field; } ;
typedef int u8 ;
typedef int acpi_integer ;


 int ACPI_INTEGER_BIT_SIZE ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static u8
acpi_ex_register_overflow(union acpi_operand_object *obj_desc,
     acpi_integer value)
{

 if (obj_desc->common_field.bit_length >= ACPI_INTEGER_BIT_SIZE) {




  return (FALSE);
 }

 if (value >= ((acpi_integer) 1 << obj_desc->common_field.bit_length)) {




  return (TRUE);
 }



 return (FALSE);
}
