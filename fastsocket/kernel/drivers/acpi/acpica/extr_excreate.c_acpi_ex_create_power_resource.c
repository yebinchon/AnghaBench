
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ resource_order; scalar_t__ system_level; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ power_resource; } ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct acpi_walk_state {union acpi_operand_object** operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int ACPI_TYPE_POWER ;
 int AE_NO_MEMORY ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_create_power_resource ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_create_power_resource(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 acpi_status status;
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_TRACE_PTR(ex_create_power_resource, walk_state);



 obj_desc = acpi_ut_create_internal_object(ACPI_TYPE_POWER);
 if (!obj_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 obj_desc->power_resource.system_level = (u8) operand[1]->integer.value;
 obj_desc->power_resource.resource_order =
     (u16) operand[2]->integer.value;



 status = acpi_ns_attach_object((struct acpi_namespace_node *)operand[0],
           obj_desc, ACPI_TYPE_POWER);



 acpi_ut_remove_reference(obj_desc);
 return_ACPI_STATUS(status);
}
