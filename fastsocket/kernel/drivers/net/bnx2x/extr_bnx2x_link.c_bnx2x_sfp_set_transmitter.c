
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 int DP (int ,char*,int ) ;
 int NETIF_MSG_LINK ;
 int bnx2x_sfp_e1e2_set_transmitter (struct link_params*,struct bnx2x_phy*,int ) ;
 int bnx2x_sfp_e3_set_transmitter (struct link_params*,struct bnx2x_phy*,int ) ;

__attribute__((used)) static void bnx2x_sfp_set_transmitter(struct link_params *params,
          struct bnx2x_phy *phy,
          u8 tx_en)
{
 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "Setting SFP+ transmitter to %d\n", tx_en);
 if (CHIP_IS_E3(bp))
  bnx2x_sfp_e3_set_transmitter(params, phy, tx_en);
 else
  bnx2x_sfp_e1e2_set_transmitter(params, phy, tx_en);
}
