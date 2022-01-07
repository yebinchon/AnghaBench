
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int MISC_AEU_ENABLE_MCP_PRTY_BITS ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int ) ;
 int * mcp_attn_ctl_regs ;

__attribute__((used)) static inline void bnx2x_set_mcp_parity(struct bnx2x *bp, u8 enable)
{
 int i;
 u32 reg_val;

 for (i = 0; i < ARRAY_SIZE(mcp_attn_ctl_regs); i++) {
  reg_val = REG_RD(bp, mcp_attn_ctl_regs[i]);

  if (enable)
   reg_val |= MISC_AEU_ENABLE_MCP_PRTY_BITS;
  else
   reg_val &= ~MISC_AEU_ENABLE_MCP_PRTY_BITS;

  REG_WR(bp, mcp_attn_ctl_regs[i], reg_val);
 }
}
