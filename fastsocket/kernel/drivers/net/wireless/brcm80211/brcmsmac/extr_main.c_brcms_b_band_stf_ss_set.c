
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_hardware {scalar_t__ clk; int hw_stf_ss_opmode; } ;


 int brcms_upd_ofdm_pctl1_table (struct brcms_hardware*) ;

void brcms_b_band_stf_ss_set(struct brcms_hardware *wlc_hw, u8 stf_mode)
{
 wlc_hw->hw_stf_ss_opmode = stf_mode;

 if (wlc_hw->clk)
  brcms_upd_ofdm_pctl1_table(wlc_hw);
}
