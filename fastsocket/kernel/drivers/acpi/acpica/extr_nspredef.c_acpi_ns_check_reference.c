
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ class; } ;
union acpi_operand_object {TYPE_1__ reference; } ;
struct acpi_predefined_data {int node_flags; int pathname; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_REFCLASS_NAME ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ut_get_reference_name (union acpi_operand_object*) ;

__attribute__((used)) static acpi_status
acpi_ns_check_reference(struct acpi_predefined_data *data,
   union acpi_operand_object *return_object)
{






 if (return_object->reference.class == ACPI_REFCLASS_NAME) {
  return (AE_OK);
 }

 ACPI_WARN_PREDEFINED((AE_INFO, data->pathname, data->node_flags,
         "Return type mismatch - unexpected reference object type [%s] %2.2X",
         acpi_ut_get_reference_name(return_object),
         return_object->reference.class));

 return (AE_AML_OPERAND_TYPE);
}
