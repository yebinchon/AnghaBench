
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int DMAE_CMD_C_ENABLE ;
 int DMAE_COMMAND_C_DST_SHIFT ;

u32 bnx2x_dmae_opcode_add_comp(u32 opcode, u8 comp_type)
{
 return opcode | ((comp_type << DMAE_COMMAND_C_DST_SHIFT) |
      DMAE_CMD_C_ENABLE);
}
