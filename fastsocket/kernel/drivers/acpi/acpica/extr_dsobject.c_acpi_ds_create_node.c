
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int arg; } ;
struct TYPE_5__ {TYPE_3__ value; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct TYPE_4__ {int type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int type; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int AE_OK ;
 int acpi_ds_build_internal_object (struct acpi_walk_state*,int ,union acpi_operand_object**) ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 scalar_t__ acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_create_node ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_create_node(struct acpi_walk_state *walk_state,
      struct acpi_namespace_node *node,
      union acpi_parse_object *op)
{
 acpi_status status;
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_TRACE_PTR(ds_create_node, op);






 if (acpi_ns_get_attached_object(node)) {
  return_ACPI_STATUS(AE_OK);
 }

 if (!op->common.value.arg) {



  return_ACPI_STATUS(AE_OK);
 }



 status = acpi_ds_build_internal_object(walk_state, op->common.value.arg,
            &obj_desc);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 node->type = obj_desc->common.type;



 status = acpi_ns_attach_object(node, obj_desc, node->type);



 acpi_ut_remove_reference(obj_desc);
 return_ACPI_STATUS(status);
}
