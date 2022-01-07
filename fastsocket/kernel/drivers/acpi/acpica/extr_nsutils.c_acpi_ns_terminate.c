
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_gbl_root_node ;
 int acpi_ns_delete_namespace_subtree (int ) ;
 int acpi_ns_detach_object (int ) ;
 union acpi_operand_object* acpi_ns_get_attached_object (int ) ;
 int ns_terminate ;
 int return_VOID ;

void acpi_ns_terminate(void)
{
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_TRACE(ns_terminate);






 acpi_ns_delete_namespace_subtree(acpi_gbl_root_node);



 obj_desc = acpi_ns_get_attached_object(acpi_gbl_root_node);
 if (obj_desc) {
  acpi_ns_detach_object(acpi_gbl_root_node);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Namespace freed\n"));
 return_VOID;
}
