
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef void* u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object** operands; } ;
struct acpi_signal_fatal_info {void* argument; void* code; void* type; } ;
typedef int acpi_status ;


 struct acpi_signal_fatal_info* ACPI_ALLOCATE (int) ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FREE (struct acpi_signal_fatal_info*) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int ACPI_SIGNAL_FATAL ;
 int AE_AML_BAD_OPCODE ;
 int AE_INFO ;
 int AE_OK ;

 int acpi_os_signal (int ,struct acpi_signal_fatal_info*) ;
 int acpi_ps_get_opcode_name (int) ;
 int ex_opcode_3A_0T_0R ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_3A_0T_0R(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 struct acpi_signal_fatal_info *fatal;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE_STR(ex_opcode_3A_0T_0R,
    acpi_ps_get_opcode_name(walk_state->opcode));

 switch (walk_state->opcode) {
 case 128:

  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "FatalOp: Type %X Code %X Arg %X <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n",
      (u32) operand[0]->integer.value,
      (u32) operand[1]->integer.value,
      (u32) operand[2]->integer.value));

  fatal = ACPI_ALLOCATE(sizeof(struct acpi_signal_fatal_info));
  if (fatal) {
   fatal->type = (u32) operand[0]->integer.value;
   fatal->code = (u32) operand[1]->integer.value;
   fatal->argument = (u32) operand[2]->integer.value;
  }



  status = acpi_os_signal(ACPI_SIGNAL_FATAL, fatal);



  ACPI_FREE(fatal);
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode %X",
       walk_state->opcode));
  status = AE_AML_BAD_OPCODE;
  goto cleanup;
 }

      cleanup:

 return_ACPI_STATUS(status);
}
