
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_vars {int ieee_fc; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int) ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_CL37_FC_LD ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_SYMMETRIC ;
 int NETIF_MSG_LINK ;
 int bnx2x_calc_ieee_aneg_adv (struct bnx2x_phy*,struct link_params*,int*) ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void bnx2x_8073_set_pause_cl37(struct link_params *params,
          struct bnx2x_phy *phy,
          struct link_vars *vars)
{
 u16 cl37_val;
 struct bnx2x *bp = params->bp;
 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD, MDIO_AN_REG_CL37_FC_LD, &cl37_val);

 cl37_val &= ~MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH;

 bnx2x_calc_ieee_aneg_adv(phy, params, &vars->ieee_fc);
 if ((vars->ieee_fc &
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_SYMMETRIC) ==
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_SYMMETRIC) {
  cl37_val |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_SYMMETRIC;
 }
 if ((vars->ieee_fc &
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC) ==
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC) {
  cl37_val |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC;
 }
 if ((vars->ieee_fc &
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) ==
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) {
  cl37_val |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH;
 }
 DP(NETIF_MSG_LINK,
   "Ext phy AN advertize cl37 0x%x\n", cl37_val);

 bnx2x_cl45_write(bp, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_CL37_FC_LD, cl37_val);
 msleep(500);
}
