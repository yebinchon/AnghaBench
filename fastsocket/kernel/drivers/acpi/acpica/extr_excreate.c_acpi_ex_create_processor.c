
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ address; void* length; void* proc_id; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ processor; } ;
typedef void* u8 ;
struct acpi_walk_state {union acpi_operand_object** operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_io_address ;


 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int ACPI_TYPE_PROCESSOR ;
 int AE_NO_MEMORY ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_create_processor ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_create_processor(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 union acpi_operand_object *obj_desc;
 acpi_status status;

 ACPI_FUNCTION_TRACE_PTR(ex_create_processor, walk_state);



 obj_desc = acpi_ut_create_internal_object(ACPI_TYPE_PROCESSOR);
 if (!obj_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 obj_desc->processor.proc_id = (u8) operand[1]->integer.value;
 obj_desc->processor.length = (u8) operand[3]->integer.value;
 obj_desc->processor.address =
     (acpi_io_address) operand[2]->integer.value;



 status = acpi_ns_attach_object((struct acpi_namespace_node *)operand[0],
           obj_desc, ACPI_TYPE_PROCESSOR);



 acpi_ut_remove_reference(obj_desc);
 return_ACPI_STATUS(status);
}
