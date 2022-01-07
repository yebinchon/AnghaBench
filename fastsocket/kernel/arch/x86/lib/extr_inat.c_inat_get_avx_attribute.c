
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t insn_byte_t ;
typedef int const insn_attr_t ;


 size_t INAT_LSTPFX_MAX ;
 size_t X86_VEX_M_MAX ;
 int const*** inat_avx_tables ;

insn_attr_t inat_get_avx_attribute(insn_byte_t opcode, insn_byte_t vex_m,
       insn_byte_t vex_p)
{
 const insn_attr_t *table;
 if (vex_m > X86_VEX_M_MAX || vex_p > INAT_LSTPFX_MAX)
  return 0;
 table = inat_avx_tables[vex_m][vex_p];
 if (!table)
  return 0;
 return table[opcode];
}
