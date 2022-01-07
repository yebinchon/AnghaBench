
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; union acpi_operand_object* next_object; } ;
struct TYPE_3__ {scalar_t__ handler; void* pointer; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ data; } ;
struct acpi_namespace_node {union acpi_operand_object* object; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_object_handler ;


 scalar_t__ ACPI_TYPE_LOCAL_DATA ;
 int AE_ALREADY_EXISTS ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_operand_object* acpi_ut_create_internal_object (scalar_t__) ;

acpi_status
acpi_ns_attach_data(struct acpi_namespace_node *node,
      acpi_object_handler handler, void *data)
{
 union acpi_operand_object *prev_obj_desc;
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *data_desc;



 prev_obj_desc = ((void*)0);
 obj_desc = node->object;
 while (obj_desc) {
  if ((obj_desc->common.type == ACPI_TYPE_LOCAL_DATA) &&
      (obj_desc->data.handler == handler)) {
   return (AE_ALREADY_EXISTS);
  }

  prev_obj_desc = obj_desc;
  obj_desc = obj_desc->common.next_object;
 }



 data_desc = acpi_ut_create_internal_object(ACPI_TYPE_LOCAL_DATA);
 if (!data_desc) {
  return (AE_NO_MEMORY);
 }

 data_desc->data.handler = handler;
 data_desc->data.pointer = data;



 if (prev_obj_desc) {
  prev_obj_desc->common.next_object = data_desc;
 } else {
  node->object = data_desc;
 }

 return (AE_OK);
}
