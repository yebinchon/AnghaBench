
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {int radio_chanspec; TYPE_1__ pubpi; } ;


 scalar_t__ CHSPEC_IS2G (int ) ;
 scalar_t__ CHSPEC_IS40 (int ) ;
 scalar_t__ LCNREV_LT (int ,int) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;

void wlc_lcnphy_deaf_mode(struct brcms_phy *pi, bool mode)
{

 u8 phybw40;
 phybw40 = CHSPEC_IS40(pi->radio_chanspec);

 if (LCNREV_LT(pi->pubpi.phy_rev, 2)) {
  mod_phy_reg(pi, 0x4b0, (0x1 << 5), (mode) << 5);
  mod_phy_reg(pi, 0x4b1, (0x1 << 9), 0 << 9);
 } else {
  mod_phy_reg(pi, 0x4b0, (0x1 << 5), (mode) << 5);
  mod_phy_reg(pi, 0x4b1, (0x1 << 9), 0 << 9);
 }

 if (phybw40 == 0) {
  mod_phy_reg((pi), 0x410,
       (0x1 << 6) |
       (0x1 << 5),
       ((CHSPEC_IS2G(
          pi->radio_chanspec)) ? (!mode) : 0) <<
       6 | (!mode) << 5);
  mod_phy_reg(pi, 0x410, (0x1 << 7), (mode) << 7);
 }
}
