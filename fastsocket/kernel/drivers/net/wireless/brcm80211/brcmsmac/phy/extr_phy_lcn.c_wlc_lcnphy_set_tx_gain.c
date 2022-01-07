
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lcnphy_txgains {int gm_gain; int pga_gain; int pad_gain; int dac_gain; } ;
struct brcms_phy {int dummy; } ;


 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int wlc_lcnphy_enable_tx_gain_override (struct brcms_phy*) ;
 int wlc_lcnphy_get_pa_gain (struct brcms_phy*) ;
 int wlc_lcnphy_set_dac_gain (struct brcms_phy*,int ) ;

__attribute__((used)) static void wlc_lcnphy_set_tx_gain(struct brcms_phy *pi,
       struct lcnphy_txgains *target_gains)
{
 u16 pa_gain = wlc_lcnphy_get_pa_gain(pi);

 mod_phy_reg(
  pi, 0x4b5,
  (0xffff << 0),
  ((target_gains->gm_gain) |
   (target_gains->pga_gain << 8)) <<
  0);
 mod_phy_reg(pi, 0x4fb,
      (0x7fff << 0),
      ((target_gains->pad_gain) | (pa_gain << 8)) << 0);

 mod_phy_reg(
  pi, 0x4fc,
  (0xffff << 0),
  ((target_gains->gm_gain) |
   (target_gains->pga_gain << 8)) <<
  0);
 mod_phy_reg(pi, 0x4fd,
      (0x7fff << 0),
      ((target_gains->pad_gain) | (pa_gain << 8)) << 0);

 wlc_lcnphy_set_dac_gain(pi, target_gains->dac_gain);

 wlc_lcnphy_enable_tx_gain_override(pi);
}
