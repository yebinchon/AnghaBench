
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int type; } ;
struct bnx2x {int dummy; } ;


 int NIG_LATCH_BC_ENABLE_MI_INT ;
 int NIG_REG_LATCH_BC_0 ;

 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 ;
 int bnx2x_848xx_set_led (struct bnx2x*,struct bnx2x_phy*) ;
 int bnx2x_bits_en (struct bnx2x*,int ,int) ;
 int bnx2x_save_848xx_spirom_version (struct bnx2x_phy*,struct bnx2x*,int) ;

__attribute__((used)) static void bnx2x_848xx_specific_func(struct bnx2x_phy *phy,
          struct link_params *params,
          u32 action)
{
 struct bnx2x *bp = params->bp;
 switch (action) {
 case 128:
  if ((phy->type != PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833) &&
      (phy->type != PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834)) {

   bnx2x_save_848xx_spirom_version(phy, bp, params->port);
  }




  bnx2x_bits_en(bp, NIG_REG_LATCH_BC_0 + params->port*4,
         1 << NIG_LATCH_BC_ENABLE_MI_INT);

  bnx2x_848xx_set_led(bp, phy);
  break;
 }
}
