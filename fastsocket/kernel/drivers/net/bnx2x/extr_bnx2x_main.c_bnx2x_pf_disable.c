
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int CFC_REG_WEAK_ENABLE_PF ;
 int IGU_PF_CONF_FUNC_EN ;
 int IGU_REG_PF_CONFIGURATION ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int ) ;

void bnx2x_pf_disable(struct bnx2x *bp)
{
 u32 val = REG_RD(bp, IGU_REG_PF_CONFIGURATION);
 val &= ~IGU_PF_CONF_FUNC_EN;

 REG_WR(bp, IGU_REG_PF_CONFIGURATION, val);
 REG_WR(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 0);
 REG_WR(bp, CFC_REG_WEAK_ENABLE_PF, 0);
}
