
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int def_md_devad; } ;
struct bnx2x {int dummy; } ;


 int NIG_REG_XGXS0_CTRL_MD_DEVAD ;
 int NIG_REG_XGXS0_CTRL_MD_ST ;

 int REG_WR (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_xgxs_specific_func(struct bnx2x_phy *phy,
         struct link_params *params,
         u32 action)
{
 struct bnx2x *bp = params->bp;
 switch (action) {
 case 128:

  REG_WR(bp, NIG_REG_XGXS0_CTRL_MD_ST + params->port*0x18, 0);
  REG_WR(bp, NIG_REG_XGXS0_CTRL_MD_DEVAD + params->port*0x18,
         phy->def_md_devad);
  break;
 }
}
