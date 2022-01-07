
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int type; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int ) ;
 int NETIF_MSG_LINK ;



 int bnx2x_8727_power_module (struct bnx2x*,struct bnx2x_phy*,int ) ;
 int bnx2x_warpcore_power_module (struct link_params*,int ) ;

__attribute__((used)) static void bnx2x_power_sfp_module(struct link_params *params,
       struct bnx2x_phy *phy,
       u8 power)
{
 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "Setting SFP+ power to %x\n", power);

 switch (phy->type) {
 case 129:
 case 130:
  bnx2x_8727_power_module(params->bp, phy, power);
  break;
 case 128:
  bnx2x_warpcore_power_module(params, power);
  break;
 default:
  break;
 }
}
