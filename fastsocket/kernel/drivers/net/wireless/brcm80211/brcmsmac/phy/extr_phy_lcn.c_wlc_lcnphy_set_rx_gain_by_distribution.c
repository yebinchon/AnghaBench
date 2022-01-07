
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ LCNREV_LT (int ,int) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;

__attribute__((used)) static void
wlc_lcnphy_set_rx_gain_by_distribution(struct brcms_phy *pi,
           u16 trsw,
           u16 ext_lna,
           u16 biq2,
           u16 biq1,
           u16 tia, u16 lna2, u16 lna1)
{
 u16 gain0_15, gain16_19;

 gain16_19 = biq2 & 0xf;
 gain0_15 = ((biq1 & 0xf) << 12) |
     ((tia & 0xf) << 8) |
     ((lna2 & 0x3) << 6) |
     ((lna2 &
       0x3) << 4) | ((lna1 & 0x3) << 2) | ((lna1 & 0x3) << 0);

 mod_phy_reg(pi, 0x4b6, (0xffff << 0), gain0_15 << 0);
 mod_phy_reg(pi, 0x4b7, (0xf << 0), gain16_19 << 0);
 mod_phy_reg(pi, 0x4b1, (0x3 << 11), lna1 << 11);

 if (LCNREV_LT(pi->pubpi.phy_rev, 2)) {
  mod_phy_reg(pi, 0x4b1, (0x1 << 9), ext_lna << 9);
  mod_phy_reg(pi, 0x4b1, (0x1 << 10), ext_lna << 10);
 } else {
  mod_phy_reg(pi, 0x4b1, (0x1 << 10), 0 << 10);

  mod_phy_reg(pi, 0x4b1, (0x1 << 15), 0 << 15);

  mod_phy_reg(pi, 0x4b1, (0x1 << 9), ext_lna << 9);
 }

 mod_phy_reg(pi, 0x44d, (0x1 << 0), (!trsw) << 0);

}
