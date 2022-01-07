
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int aml; int aml_start; } ;
struct acpi_walk_state {TYPE_2__* op_info; int arg_types; int opcode; TYPE_1__ parser_state; scalar_t__ aml_offset; } ;
typedef int acpi_status ;
struct TYPE_4__ {int class; int parse_args; } ;


 int ACPI_DUMP_BUFFER (int ,int) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 scalar_t__ ACPI_PTR_DIFF (int ,int ) ;
 int AE_CTRL_PARSE_CONTINUE ;
 int AE_INFO ;
 int AE_OK ;



 int AML_INT_NAMEPATH_OP ;
 int ARGP_NAMESTRING ;
 TYPE_2__* acpi_ps_get_opcode_info (int ) ;
 int acpi_ps_get_opcode_size (int ) ;
 int acpi_ps_peek_opcode (TYPE_1__*) ;
 int ps_get_aml_opcode ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status acpi_ps_get_aml_opcode(struct acpi_walk_state *walk_state)
{

 ACPI_FUNCTION_TRACE_PTR(ps_get_aml_opcode, walk_state);

 walk_state->aml_offset =
     (u32) ACPI_PTR_DIFF(walk_state->parser_state.aml,
    walk_state->parser_state.aml_start);
 walk_state->opcode = acpi_ps_peek_opcode(&(walk_state->parser_state));







 walk_state->op_info = acpi_ps_get_opcode_info(walk_state->opcode);

 switch (walk_state->op_info->class) {
 case 130:
 case 129:




  walk_state->opcode = AML_INT_NAMEPATH_OP;
  walk_state->arg_types = ARGP_NAMESTRING;
  break;

 case 128:



  ACPI_ERROR((AE_INFO,
       "Found unknown opcode %X at AML address %p offset %X, ignoring",
       walk_state->opcode, walk_state->parser_state.aml,
       walk_state->aml_offset));

  ACPI_DUMP_BUFFER(walk_state->parser_state.aml, 128);



  walk_state->parser_state.aml++;
  return_ACPI_STATUS(AE_CTRL_PARSE_CONTINUE);

 default:



  walk_state->parser_state.aml +=
      acpi_ps_get_opcode_size(walk_state->opcode);
  walk_state->arg_types = walk_state->op_info->parse_args;
  break;
 }

 return_ACPI_STATUS(AE_OK);
}
