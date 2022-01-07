
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct acpi_opcode_info {int dummy; } ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AML_EXTENDED_OPCODE ;
 size_t MAX_EXTENDED_OPCODE ;
 size_t _UNK ;
 struct acpi_opcode_info const* acpi_gbl_aml_op_info ;
 size_t* acpi_gbl_long_op_index ;
 size_t* acpi_gbl_short_op_index ;
 int ps_get_opcode_info ;

const struct acpi_opcode_info *acpi_ps_get_opcode_info(u16 opcode)
{
 ACPI_FUNCTION_NAME(ps_get_opcode_info);




 if (!(opcode & 0xFF00)) {



  return (&acpi_gbl_aml_op_info
   [acpi_gbl_short_op_index[(u8) opcode]]);
 }

 if (((opcode & 0xFF00) == AML_EXTENDED_OPCODE) &&
     (((u8) opcode) <= MAX_EXTENDED_OPCODE)) {



  return (&acpi_gbl_aml_op_info
   [acpi_gbl_long_op_index[(u8) opcode]]);
 }



 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Unknown AML opcode [%4.4X]\n", opcode));

 return (&acpi_gbl_aml_op_info[_UNK]);
}
