
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union acpi_operand_object {TYPE_1__ common; } ;


 char* acpi_ut_get_type_name (int ) ;

char *acpi_ut_get_object_type_name(union acpi_operand_object *obj_desc)
{

 if (!obj_desc) {
  return ("[NULL Object Descriptor]");
 }

 return (acpi_ut_get_type_name(obj_desc->common.type));
}
