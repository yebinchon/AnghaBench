
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int integer; void* size; } ;
struct TYPE_4__ {int aml_offset; TYPE_1__ value; } ;
union acpi_parse_object {TYPE_2__ common; } ;
typedef int u32 ;
typedef int u16 ;
struct acpi_parse_state {int aml; int aml_start; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GET8 (int ) ;
 int ACPI_MOVE_32_TO_32 (int*,int ) ;
 int ACPI_NAME_SIZE ;
 int ACPI_PTR_DIFF (int ,int ) ;



 union acpi_parse_object* acpi_ps_alloc_op (int) ;
 void* acpi_ps_get_next_package_length (struct acpi_parse_state*) ;
 int acpi_ps_set_name (union acpi_parse_object*,int) ;
 int ps_get_next_field ;
 int return_PTR (union acpi_parse_object*) ;

__attribute__((used)) static union acpi_parse_object *acpi_ps_get_next_field(struct acpi_parse_state
             *parser_state)
{
 u32 aml_offset = (u32)
     ACPI_PTR_DIFF(parser_state->aml,
     parser_state->aml_start);
 union acpi_parse_object *field;
 u16 opcode;
 u32 name;

 ACPI_FUNCTION_TRACE(ps_get_next_field);



 switch (ACPI_GET8(parser_state->aml)) {
 default:

  opcode = 129;
  break;

 case 0x00:

  opcode = 128;
  parser_state->aml++;
  break;

 case 0x01:

  opcode = 130;
  parser_state->aml++;
  break;
 }



 field = acpi_ps_alloc_op(opcode);
 if (!field) {
  return_PTR(((void*)0));
 }

 field->common.aml_offset = aml_offset;



 switch (opcode) {
 case 129:



  ACPI_MOVE_32_TO_32(&name, parser_state->aml);
  acpi_ps_set_name(field, name);
  parser_state->aml += ACPI_NAME_SIZE;



  field->common.value.size =
      acpi_ps_get_next_package_length(parser_state);
  break;

 case 128:



  field->common.value.size =
      acpi_ps_get_next_package_length(parser_state);
  break;

 case 130:





  field->common.value.integer =
      (((u32) ACPI_GET8(parser_state->aml) << 8));
  parser_state->aml++;
  field->common.value.integer |= ACPI_GET8(parser_state->aml);
  parser_state->aml++;
  break;

 default:


  break;
 }

 return_PTR(field);
}
