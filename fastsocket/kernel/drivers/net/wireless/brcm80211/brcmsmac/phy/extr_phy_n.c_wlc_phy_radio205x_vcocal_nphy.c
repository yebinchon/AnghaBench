
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ NREV_GE (int ,int) ;
 int RADIO_2056_SYN_PLL_MAST3 ;
 int RADIO_2056_SYN_PLL_VCOCAL12 ;
 int RADIO_2057_RFPLL_MISC_CAL_RESETN ;
 int RADIO_2057_RFPLL_MISC_EN ;
 int mod_radio_reg (struct brcms_phy*,int ,int,int) ;
 int udelay (int) ;
 int write_radio_reg (struct brcms_phy*,int ,int) ;

void wlc_phy_radio205x_vcocal_nphy(struct brcms_phy *pi)
{
 if (NREV_GE(pi->pubpi.phy_rev, 7)) {
  mod_radio_reg(pi, RADIO_2057_RFPLL_MISC_EN, 0x01, 0x0);
  mod_radio_reg(pi, RADIO_2057_RFPLL_MISC_CAL_RESETN, 0x04, 0x0);
  mod_radio_reg(pi, RADIO_2057_RFPLL_MISC_CAL_RESETN, 0x04,
         (1 << 2));
  mod_radio_reg(pi, RADIO_2057_RFPLL_MISC_EN, 0x01, 0x01);
 } else if (NREV_GE(pi->pubpi.phy_rev, 3)) {
  write_radio_reg(pi, RADIO_2056_SYN_PLL_VCOCAL12, 0x0);
  write_radio_reg(pi, RADIO_2056_SYN_PLL_MAST3, 0x38);
  write_radio_reg(pi, RADIO_2056_SYN_PLL_MAST3, 0x18);
  write_radio_reg(pi, RADIO_2056_SYN_PLL_MAST3, 0x38);
  write_radio_reg(pi, RADIO_2056_SYN_PLL_MAST3, 0x39);
 }

 udelay(300);
}
