
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {int radio_chanspec; TYPE_1__ pubpi; } ;


 scalar_t__ CHSPEC_IS2G (int ) ;
 scalar_t__ LCNREV_LT (int ,int) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;

__attribute__((used)) static void
wlc_lcnphy_rx_gain_override_enable(struct brcms_phy *pi, bool enable)
{
 u16 ebit = enable ? 1 : 0;

 mod_phy_reg(pi, 0x4b0, (0x1 << 8), ebit << 8);

 mod_phy_reg(pi, 0x44c, (0x1 << 0), ebit << 0);

 if (LCNREV_LT(pi->pubpi.phy_rev, 2)) {
  mod_phy_reg(pi, 0x44c, (0x1 << 4), ebit << 4);
  mod_phy_reg(pi, 0x44c, (0x1 << 6), ebit << 6);
  mod_phy_reg(pi, 0x4b0, (0x1 << 5), ebit << 5);
  mod_phy_reg(pi, 0x4b0, (0x1 << 6), ebit << 6);
 } else {
  mod_phy_reg(pi, 0x4b0, (0x1 << 12), ebit << 12);
  mod_phy_reg(pi, 0x4b0, (0x1 << 13), ebit << 13);
  mod_phy_reg(pi, 0x4b0, (0x1 << 5), ebit << 5);
 }

 if (CHSPEC_IS2G(pi->radio_chanspec)) {
  mod_phy_reg(pi, 0x4b0, (0x1 << 10), ebit << 10);
  mod_phy_reg(pi, 0x4e5, (0x1 << 3), ebit << 3);
 }
}
