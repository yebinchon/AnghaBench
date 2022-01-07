
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int aml_op_name; int aml_opcode; int descriptor_type; } ;
union acpi_parse_object {TYPE_1__ common; } ;
typedef int u16 ;
struct TYPE_4__ {int name; } ;


 int ACPI_DESC_TYPE_PARSER ;
 int ACPI_DISASM_ONLY_MEMBERS (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_STRNCPY (int ,int ,int) ;
 TYPE_2__* acpi_ps_get_opcode_info (int ) ;

void acpi_ps_init_op(union acpi_parse_object *op, u16 opcode)
{
 ACPI_FUNCTION_ENTRY();

 op->common.descriptor_type = ACPI_DESC_TYPE_PARSER;
 op->common.aml_opcode = opcode;

 ACPI_DISASM_ONLY_MEMBERS(ACPI_STRNCPY(op->common.aml_op_name,
           (acpi_ps_get_opcode_info
            (opcode))->name,
           sizeof(op->common.aml_op_name)));
}
