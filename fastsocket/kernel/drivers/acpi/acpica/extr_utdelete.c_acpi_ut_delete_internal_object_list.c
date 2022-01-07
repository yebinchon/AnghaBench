
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;


 int ACPI_FREE (union acpi_operand_object**) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_VOID ;
 int ut_delete_internal_object_list ;

void acpi_ut_delete_internal_object_list(union acpi_operand_object **obj_list)
{
 union acpi_operand_object **internal_obj;

 ACPI_FUNCTION_TRACE(ut_delete_internal_object_list);



 for (internal_obj = obj_list; *internal_obj; internal_obj++) {
  acpi_ut_remove_reference(*internal_obj);
 }



 ACPI_FREE(obj_list);
 return_VOID;
}
