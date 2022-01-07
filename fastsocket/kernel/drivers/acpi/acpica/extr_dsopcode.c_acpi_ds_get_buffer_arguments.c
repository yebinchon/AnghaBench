
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int aml_start; int aml_length; struct acpi_namespace_node* node; } ;
struct TYPE_3__ {int flags; } ;
union acpi_operand_object {TYPE_2__ buffer; TYPE_1__ common; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int AE_AML_INTERNAL ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_execute_arguments (struct acpi_namespace_node*,struct acpi_namespace_node*,int ,int ) ;
 int ds_get_buffer_arguments ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ds_get_buffer_arguments(union acpi_operand_object *obj_desc)
{
 struct acpi_namespace_node *node;
 acpi_status status;

 ACPI_FUNCTION_TRACE_PTR(ds_get_buffer_arguments, obj_desc);

 if (obj_desc->common.flags & AOPOBJ_DATA_VALID) {
  return_ACPI_STATUS(AE_OK);
 }



 node = obj_desc->buffer.node;
 if (!node) {
  ACPI_ERROR((AE_INFO,
       "No pointer back to NS node in buffer obj %p",
       obj_desc));
  return_ACPI_STATUS(AE_AML_INTERNAL);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Buffer Arg Init\n"));



 status = acpi_ds_execute_arguments(node, node,
        obj_desc->buffer.aml_length,
        obj_desc->buffer.aml_start);
 return_ACPI_STATUS(status);
}
