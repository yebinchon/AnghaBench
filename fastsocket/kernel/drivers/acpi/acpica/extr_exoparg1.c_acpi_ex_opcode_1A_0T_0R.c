
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef int u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object** operands; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int AE_AML_BAD_OPCODE ;
 int AE_INFO ;
 int AE_OK ;






 int acpi_ex_release_mutex (union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ex_system_do_stall (int ) ;
 int acpi_ex_system_do_suspend (int ) ;
 int acpi_ex_system_reset_event (union acpi_operand_object*) ;
 int acpi_ex_system_signal_event (union acpi_operand_object*) ;
 int acpi_ex_unload_table (union acpi_operand_object*) ;
 int acpi_ps_get_opcode_name (int) ;
 int ex_opcode_1A_0T_0R ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_1A_0T_0R(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE_STR(ex_opcode_1A_0T_0R,
    acpi_ps_get_opcode_name(walk_state->opcode));



 switch (walk_state->opcode) {
 case 133:

  status = acpi_ex_release_mutex(operand[0], walk_state);
  break;

 case 132:

  status = acpi_ex_system_reset_event(operand[0]);
  break;

 case 131:

  status = acpi_ex_system_signal_event(operand[0]);
  break;

 case 130:

  status = acpi_ex_system_do_suspend(operand[0]->integer.value);
  break;

 case 129:

  status =
      acpi_ex_system_do_stall((u32) operand[0]->integer.value);
  break;

 case 128:

  status = acpi_ex_unload_table(operand[0]);
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode %X",
       walk_state->opcode));
  status = AE_AML_BAD_OPCODE;
  break;
 }

 return_ACPI_STATUS(status);
}
