
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {int req_fc_auto_adv; struct bnx2x* bp; } ;
struct bnx2x_phy {int req_flow_ctrl; } ;
struct bnx2x {int dummy; } ;







 int DP (int ,char*,int ) ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_FULL_DUPLEX ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_NONE ;
 int NETIF_MSG_LINK ;

__attribute__((used)) static void bnx2x_calc_ieee_aneg_adv(struct bnx2x_phy *phy,
         struct link_params *params, u16 *ieee_fc)
{
 struct bnx2x *bp = params->bp;
 *ieee_fc = MDIO_COMBO_IEEE0_AUTO_NEG_ADV_FULL_DUPLEX;




 switch (phy->req_flow_ctrl) {
 case 132:
  switch (params->req_fc_auto_adv) {
  case 131:
   *ieee_fc |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH;
   break;
  case 129:
  case 128:
   *ieee_fc |=
    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC;
   break;
  default:
   break;
  }
  break;
 case 128:
  *ieee_fc |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC;
  break;

 case 129:
 case 131:
  *ieee_fc |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH;
  break;

 case 130:
 default:
  *ieee_fc |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_NONE;
  break;
 }
 DP(NETIF_MSG_LINK, "ieee_fc = 0x%x\n", *ieee_fc);
}
