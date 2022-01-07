
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aml_start; } ;
union acpi_operand_object {TYPE_1__ method; } ;
struct acpi_evaluate_info {int prefix_node; } ;
typedef int acpi_status ;


 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MEMSET (struct acpi_evaluate_info*,int ,int) ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_TYPE_METHOD ;
 int acpi_gbl_root_node ;
 int acpi_ns_attach_object (int ,union acpi_operand_object*,int ) ;
 int acpi_ns_detach_object (int ) ;
 int acpi_ns_evaluate (struct acpi_evaluate_info*) ;
 union acpi_operand_object* acpi_ns_get_attached_object (int ) ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ns_exec_module_code ;
 int return_VOID ;

__attribute__((used)) static void
acpi_ns_exec_module_code(union acpi_operand_object *method_obj,
    struct acpi_evaluate_info *info)
{
 union acpi_operand_object *root_obj;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ns_exec_module_code);



 ACPI_MEMSET(info, 0, sizeof(struct acpi_evaluate_info));
 info->prefix_node = acpi_gbl_root_node;






 root_obj = acpi_ns_get_attached_object(acpi_gbl_root_node);
 acpi_ut_add_reference(root_obj);



 status = acpi_ns_attach_object(acpi_gbl_root_node, method_obj,
           ACPI_TYPE_METHOD);
 if (ACPI_FAILURE(status)) {
  goto exit;
 }



 status = acpi_ns_evaluate(info);

 ACPI_DEBUG_PRINT((ACPI_DB_INIT, "Executed module-level code at %p\n",
     method_obj->method.aml_start));



 acpi_ns_detach_object(acpi_gbl_root_node);



 status =
     acpi_ns_attach_object(acpi_gbl_root_node, root_obj,
      ACPI_TYPE_DEVICE);

      exit:
 acpi_ut_remove_reference(root_obj);
 return_VOID;
}
