
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {union acpi_parse_object* arg; } ;
struct TYPE_6__ {int aml_opcode; TYPE_1__ value; struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct TYPE_8__ {int flags; int length; scalar_t__ address; } ;
struct TYPE_7__ {int pointer; } ;
union acpi_operand_object {TYPE_4__ region; TYPE_3__ string; } ;
typedef int u32 ;
struct acpi_walk_state {union acpi_operand_object** operands; } ;
struct acpi_table_header {int length; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_physical_address ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_NATIVE_UINT (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 scalar_t__ ACPI_TO_INTEGER (struct acpi_table_header*) ;
 int ACPI_WALK_OPERANDS ;
 int AE_NOT_EXIST ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_create_operands (struct acpi_walk_state*,union acpi_parse_object*) ;
 int acpi_ex_resolve_operands (int ,int ,struct acpi_walk_state*) ;
 int acpi_get_table_by_index (int ,struct acpi_table_header**) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_tb_find_table (int ,int ,int ,int *) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_eval_table_region_operands ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_eval_table_region_operands(struct acpi_walk_state *walk_state,
       union acpi_parse_object *op)
{
 acpi_status status;
 union acpi_operand_object *obj_desc;
 union acpi_operand_object **operand;
 struct acpi_namespace_node *node;
 union acpi_parse_object *next_op;
 u32 table_index;
 struct acpi_table_header *table;

 ACPI_FUNCTION_TRACE_PTR(ds_eval_table_region_operands, op);





 node = op->common.node;



 next_op = op->common.value.arg;





 status = acpi_ds_create_operands(walk_state, next_op);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }





 status = acpi_ex_resolve_operands(op->common.aml_opcode,
       ACPI_WALK_OPERANDS, walk_state);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 operand = &walk_state->operands[0];



 status = acpi_tb_find_table(operand[0]->string.pointer,
        operand[1]->string.pointer,
        operand[2]->string.pointer, &table_index);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 acpi_ut_remove_reference(operand[0]);
 acpi_ut_remove_reference(operand[1]);
 acpi_ut_remove_reference(operand[2]);

 status = acpi_get_table_by_index(table_index, &table);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 obj_desc = acpi_ns_get_attached_object(node);
 if (!obj_desc) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }

 obj_desc->region.address =
     (acpi_physical_address) ACPI_TO_INTEGER(table);
 obj_desc->region.length = table->length;

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "RgnObj %p Addr %8.8X%8.8X Len %X\n",
     obj_desc,
     ACPI_FORMAT_NATIVE_UINT(obj_desc->region.address),
     obj_desc->region.length));



 obj_desc->region.flags |= AOPOBJ_DATA_VALID;

 return_ACPI_STATUS(status);
}
