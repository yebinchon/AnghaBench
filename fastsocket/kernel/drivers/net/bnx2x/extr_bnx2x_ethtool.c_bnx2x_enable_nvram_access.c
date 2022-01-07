
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int MCPR_NVM_ACCESS_ENABLE_EN ;
 int MCPR_NVM_ACCESS_ENABLE_WR_EN ;
 int MCP_REG_MCPR_NVM_ACCESS_ENABLE ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_enable_nvram_access(struct bnx2x *bp)
{
 u32 val;

 val = REG_RD(bp, MCP_REG_MCPR_NVM_ACCESS_ENABLE);


 REG_WR(bp, MCP_REG_MCPR_NVM_ACCESS_ENABLE,
        (val | MCPR_NVM_ACCESS_ENABLE_EN |
        MCPR_NVM_ACCESS_ENABLE_WR_EN));
}
