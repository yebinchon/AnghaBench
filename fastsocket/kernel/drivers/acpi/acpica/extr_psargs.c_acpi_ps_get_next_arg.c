
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct TYPE_6__ {int aml_opcode; TYPE_1__ value; union acpi_parse_object* next; } ;
struct TYPE_5__ {int data; } ;
union acpi_parse_object {TYPE_3__ common; TYPE_2__ named; } ;
typedef int u32 ;
struct acpi_walk_state {int arg_count; int opcode; } ;
struct acpi_parse_state {int pkg_end; int aml; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_parse_state*) ;
 int ACPI_PTR_DIFF (int ,int ) ;
 int ACPI_VAR_ARGS ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AML_BYTE_OP ;
 int AML_INT_BYTELIST_OP ;
 int AML_INT_METHODCALL_OP ;
 int AML_INT_NAMEPATH_OP ;
 int AML_UNLOAD_OP ;
 union acpi_parse_object* acpi_ps_alloc_op (int ) ;
 int acpi_ps_free_op (union acpi_parse_object*) ;
 union acpi_parse_object* acpi_ps_get_next_field (struct acpi_parse_state*) ;
 int acpi_ps_get_next_namepath (struct acpi_walk_state*,struct acpi_parse_state*,union acpi_parse_object*,int) ;
 int acpi_ps_get_next_package_end (struct acpi_parse_state*) ;
 int acpi_ps_get_next_simple_arg (struct acpi_parse_state*,int,union acpi_parse_object*) ;
 int acpi_ps_is_leading_char (int) ;
 int acpi_ps_is_prefix_char (int) ;
 int acpi_ps_peek_opcode (struct acpi_parse_state*) ;
 int ps_get_next_arg ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ps_get_next_arg(struct acpi_walk_state *walk_state,
       struct acpi_parse_state *parser_state,
       u32 arg_type, union acpi_parse_object **return_arg)
{
 union acpi_parse_object *arg = ((void*)0);
 union acpi_parse_object *prev = ((void*)0);
 union acpi_parse_object *field;
 u32 subop;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE_PTR(ps_get_next_arg, parser_state);

 switch (arg_type) {
 case 144:
 case 128:
 case 139:
 case 142:
 case 137:
 case 136:



  arg = acpi_ps_alloc_op(AML_BYTE_OP);
  if (!arg) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }
  acpi_ps_get_next_simple_arg(parser_state, arg_type, arg);
  break;

 case 134:



  parser_state->pkg_end =
      acpi_ps_get_next_package_end(parser_state);
  break;

 case 138:

  if (parser_state->aml < parser_state->pkg_end) {



   while (parser_state->aml < parser_state->pkg_end) {
    field = acpi_ps_get_next_field(parser_state);
    if (!field) {
     return_ACPI_STATUS(AE_NO_MEMORY);
    }

    if (prev) {
     prev->common.next = field;
    } else {
     arg = field;
    }
    prev = field;
   }



   parser_state->aml = parser_state->pkg_end;
  }
  break;

 case 143:

  if (parser_state->aml < parser_state->pkg_end) {



   arg = acpi_ps_alloc_op(AML_INT_BYTELIST_OP);
   if (!arg) {
    return_ACPI_STATUS(AE_NO_MEMORY);
   }



   arg->common.value.size = (u32)
       ACPI_PTR_DIFF(parser_state->pkg_end,
       parser_state->aml);
   arg->named.data = parser_state->aml;



   parser_state->aml = parser_state->pkg_end;
  }
  break;

 case 131:
 case 132:
 case 133:

  subop = acpi_ps_peek_opcode(parser_state);
  if (subop == 0 ||
      acpi_ps_is_leading_char(subop) ||
      acpi_ps_is_prefix_char(subop)) {



   arg = acpi_ps_alloc_op(AML_INT_NAMEPATH_OP);
   if (!arg) {
    return_ACPI_STATUS(AE_NO_MEMORY);
   }



   if (walk_state->opcode == AML_UNLOAD_OP) {
    status =
        acpi_ps_get_next_namepath(walk_state,
             parser_state, arg,
             1);





    if (arg->common.aml_opcode ==
        AML_INT_METHODCALL_OP) {
     acpi_ps_free_op(arg);
     arg = ((void*)0);
    }
   } else {
    status =
        acpi_ps_get_next_namepath(walk_state,
             parser_state, arg,
             0);
   }
  } else {


   walk_state->arg_count = 1;
  }
  break;

 case 141:
 case 130:



  walk_state->arg_count = 1;
  break;

 case 140:
 case 129:
 case 135:

  if (parser_state->aml < parser_state->pkg_end) {



   walk_state->arg_count = ACPI_VAR_ARGS;
  }
  break;

 default:

  ACPI_ERROR((AE_INFO, "Invalid ArgType: %X", arg_type));
  status = AE_AML_OPERAND_TYPE;
  break;
 }

 *return_arg = arg;
 return_ACPI_STATUS(status);
}
