
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int bw; } ;


 scalar_t__ ISLCNPHY (struct brcms_phy*) ;
 scalar_t__ ISNPHY (struct brcms_phy*) ;
 int SICF_BW10 ;
 int SICF_BW20 ;
 int SICF_BW40 ;




u32 wlc_phy_clk_bwbits(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 u32 phy_bw_clkbits = 0;

 if (pi && (ISNPHY(pi) || ISLCNPHY(pi))) {
  switch (pi->bw) {
  case 130:
   phy_bw_clkbits = SICF_BW10;
   break;
  case 129:
   phy_bw_clkbits = SICF_BW20;
   break;
  case 128:
   phy_bw_clkbits = SICF_BW40;
   break;
  default:
   break;
  }
 }

 return phy_bw_clkbits;
}
