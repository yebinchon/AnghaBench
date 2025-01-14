
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t class; } ;
struct TYPE_3__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 size_t ACPI_REFCLASS_MAX ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 char const** acpi_gbl_ref_class_names ;

const char *acpi_ut_get_reference_name(union acpi_operand_object *object)
{
 if (!object)
  return "NULL Object";

 if (ACPI_GET_DESCRIPTOR_TYPE(object) != ACPI_DESC_TYPE_OPERAND)
  return "Not an Operand object";

 if (object->common.type != ACPI_TYPE_LOCAL_REFERENCE)
  return "Not a Reference object";

 if (object->reference.class > ACPI_REFCLASS_MAX)
  return "Unknown Reference class";

 return acpi_gbl_ref_class_names[object->reference.class];
}
