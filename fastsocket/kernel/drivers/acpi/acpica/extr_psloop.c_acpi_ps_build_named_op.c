
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ length; int * data; } ;
struct TYPE_4__ {union acpi_parse_object* arg; } ;
struct TYPE_5__ {scalar_t__ aml_opcode; TYPE_1__ value; scalar_t__ arg_list_length; } ;
union acpi_parse_object {TYPE_3__ named; TYPE_2__ common; } ;
typedef int u8 ;
struct acpi_walk_state {scalar_t__ opcode; scalar_t__ (* descending_callback ) (struct acpi_walk_state*,union acpi_parse_object**) ;int * op; int arg_types; int parser_state; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 scalar_t__ AE_AML_NO_OPERAND ;
 scalar_t__ AE_CTRL_PARSE_CONTINUE ;
 scalar_t__ AE_CTRL_PARSE_PENDING ;
 scalar_t__ AE_CTRL_PENDING ;
 int AE_INFO ;
 scalar_t__ AE_OK ;
 scalar_t__ AML_DATA_REGION_OP ;
 scalar_t__ AML_REGION_OP ;
 scalar_t__ ARGP_NAME ;
 scalar_t__ GET_CURRENT_ARG_TYPE (int ) ;
 int INCREMENT_ARG_LIST (int ) ;
 int acpi_gbl_depth ;
 int acpi_ps_append_arg (union acpi_parse_object*,union acpi_parse_object*) ;
 scalar_t__ acpi_ps_get_next_arg (struct acpi_walk_state*,int *,scalar_t__,union acpi_parse_object**) ;
 scalar_t__ acpi_ps_next_parse_state (struct acpi_walk_state*,union acpi_parse_object*,scalar_t__) ;
 int ps_build_named_op ;
 int return_ACPI_STATUS (scalar_t__) ;
 scalar_t__ stub1 (struct acpi_walk_state*,union acpi_parse_object**) ;

__attribute__((used)) static acpi_status
acpi_ps_build_named_op(struct acpi_walk_state *walk_state,
         u8 * aml_op_start,
         union acpi_parse_object *unnamed_op,
         union acpi_parse_object **op)
{
 acpi_status status = AE_OK;
 union acpi_parse_object *arg = ((void*)0);

 ACPI_FUNCTION_TRACE_PTR(ps_build_named_op, walk_state);

 unnamed_op->common.value.arg = ((void*)0);
 unnamed_op->common.arg_list_length = 0;
 unnamed_op->common.aml_opcode = walk_state->opcode;





 while (GET_CURRENT_ARG_TYPE(walk_state->arg_types) &&
        (GET_CURRENT_ARG_TYPE(walk_state->arg_types) != ARGP_NAME)) {
  status =
      acpi_ps_get_next_arg(walk_state,
      &(walk_state->parser_state),
      GET_CURRENT_ARG_TYPE(walk_state->
             arg_types), &arg);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

  acpi_ps_append_arg(unnamed_op, arg);
  INCREMENT_ARG_LIST(walk_state->arg_types);
 }




 if (!GET_CURRENT_ARG_TYPE(walk_state->arg_types)) {
  return_ACPI_STATUS(AE_AML_NO_OPERAND);
 }



 INCREMENT_ARG_LIST(walk_state->arg_types);





 walk_state->op = ((void*)0);

 status = walk_state->descending_callback(walk_state, op);
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "During name lookup/catalog"));
  return_ACPI_STATUS(status);
 }

 if (!*op) {
  return_ACPI_STATUS(AE_CTRL_PARSE_CONTINUE);
 }

 status = acpi_ps_next_parse_state(walk_state, *op, status);
 if (ACPI_FAILURE(status)) {
  if (status == AE_CTRL_PENDING) {
   return_ACPI_STATUS(AE_CTRL_PARSE_PENDING);
  }
  return_ACPI_STATUS(status);
 }

 acpi_ps_append_arg(*op, unnamed_op->common.value.arg);
 acpi_gbl_depth++;

 if ((*op)->common.aml_opcode == AML_REGION_OP ||
     (*op)->common.aml_opcode == AML_DATA_REGION_OP) {
  (*op)->named.data = aml_op_start;
  (*op)->named.length = 0;
 }

 return_ACPI_STATUS(AE_OK);
}
