
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
union acpi_operand_object {TYPE_2__ integer; } ;
typedef scalar_t__ u8 ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; TYPE_1__* op_info; union acpi_operand_object** operands; } ;
typedef int acpi_status ;
struct TYPE_3__ {int flags; } ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int ACPI_INTEGER_MAX ;
 int ACPI_TYPE_INTEGER ;
 int AE_AML_BAD_OPCODE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TIME ;

 int AML_LOGICAL ;
 int AML_LOGICAL_NUMERIC ;

 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int acpi_ex_acquire_mutex (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ex_do_logical_numeric_op (int,int ,int ,scalar_t__*) ;
 int acpi_ex_do_logical_op (int,union acpi_operand_object*,union acpi_operand_object*,scalar_t__*) ;
 int acpi_ex_system_wait_event (union acpi_operand_object*,union acpi_operand_object*) ;
 int acpi_ps_get_opcode_name (int) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_opcode_2A_0T_1R ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_2A_0T_1R(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 union acpi_operand_object *return_desc = ((void*)0);
 acpi_status status = AE_OK;
 u8 logical_result = FALSE;

 ACPI_FUNCTION_TRACE_STR(ex_opcode_2A_0T_1R,
    acpi_ps_get_opcode_name(walk_state->opcode));



 return_desc = acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
 if (!return_desc) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }



 if (walk_state->op_info->flags & AML_LOGICAL_NUMERIC) {



  status = acpi_ex_do_logical_numeric_op(walk_state->opcode,
             operand[0]->integer.
             value,
             operand[1]->integer.
             value, &logical_result);
  goto store_logical_result;
 } else if (walk_state->op_info->flags & AML_LOGICAL) {



  status = acpi_ex_do_logical_op(walk_state->opcode, operand[0],
            operand[1], &logical_result);
  goto store_logical_result;
 }

 switch (walk_state->opcode) {
 case 129:

  status =
      acpi_ex_acquire_mutex(operand[1], operand[0], walk_state);
  if (status == AE_TIME) {
   logical_result = TRUE;
   status = AE_OK;
  }
  break;

 case 128:

  status = acpi_ex_system_wait_event(operand[1], operand[0]);
  if (status == AE_TIME) {
   logical_result = TRUE;
   status = AE_OK;
  }
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode %X",
       walk_state->opcode));
  status = AE_AML_BAD_OPCODE;
  goto cleanup;
 }

      store_logical_result:




 if (logical_result) {
  return_desc->integer.value = ACPI_INTEGER_MAX;
 }

      cleanup:



 if (ACPI_FAILURE(status)) {
  acpi_ut_remove_reference(return_desc);
 }



 else {
  walk_state->result_obj = return_desc;
 }

 return_ACPI_STATUS(status);
}
