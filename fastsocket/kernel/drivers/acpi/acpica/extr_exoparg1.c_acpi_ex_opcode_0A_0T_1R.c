
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int ACPI_TYPE_INTEGER ;
 int AE_AML_BAD_OPCODE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;

 int acpi_os_get_timer () ;
 int acpi_ps_get_opcode_name (int) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_opcode_0A_0T_1R ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_0A_0T_1R(struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *return_desc = ((void*)0);

 ACPI_FUNCTION_TRACE_STR(ex_opcode_0A_0T_1R,
    acpi_ps_get_opcode_name(walk_state->opcode));



 switch (walk_state->opcode) {
 case 128:



  return_desc = acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }
  return_desc->integer.value = acpi_os_get_timer();
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode %X",
       walk_state->opcode));
  status = AE_AML_BAD_OPCODE;
  break;
 }

      cleanup:



 if ((ACPI_FAILURE(status)) || walk_state->result_obj) {
  acpi_ut_remove_reference(return_desc);
  walk_state->result_obj = ((void*)0);
 } else {


  walk_state->result_obj = return_desc;
 }

 return_ACPI_STATUS(status);
}
