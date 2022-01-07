
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reference_count; } ;
union acpi_operand_object {TYPE_1__ common; } ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int REF_INCREMENT ;
 int acpi_ut_update_object_reference (union acpi_operand_object*,int ) ;
 int acpi_ut_valid_internal_object (union acpi_operand_object*) ;
 int return_VOID ;
 int ut_add_reference ;

void acpi_ut_add_reference(union acpi_operand_object *object)
{

 ACPI_FUNCTION_TRACE_PTR(ut_add_reference, object);



 if (!acpi_ut_valid_internal_object(object)) {
  return_VOID;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
     "Obj %p Current Refs=%X [To Be Incremented]\n",
     object, object->common.reference_count));



 (void)acpi_ut_update_object_reference(object, REF_INCREMENT);
 return_VOID;
}
