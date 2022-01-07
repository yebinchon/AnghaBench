
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
typedef int u16 ;
struct brcms_hardware {int d11core; int up; struct brcms_c_info* wlc; } ;
struct brcms_c_info {int wl; scalar_t__ macintstatus; } ;


 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 scalar_t__ MI_DMAINT ;
 int ON ;
 int WARN_ON (int) ;
 int bcma_core_enable (int ,int ) ;
 int bcma_core_is_enabled (int ) ;
 int bcma_read32 (int ,int ) ;
 int brcms_b_bsinit (struct brcms_c_info*,int ) ;
 int brcms_b_core_phy_clk (struct brcms_hardware*,int ) ;
 int brcms_c_mctrl_reset (struct brcms_hardware*) ;
 int brcms_c_setband_inact (struct brcms_c_info*,int ) ;
 int brcms_intrsrestore (int ,int ) ;
 int maccontrol ;

__attribute__((used)) static void brcms_b_setband(struct brcms_hardware *wlc_hw, uint bandunit,
       u16 chanspec) {
 struct brcms_c_info *wlc = wlc_hw->wlc;
 u32 macintmask;


 if (!bcma_core_is_enabled(wlc_hw->d11core)) {
  bcma_core_enable(wlc_hw->d11core, 0);
  brcms_c_mctrl_reset(wlc_hw);
 }

 macintmask = brcms_c_setband_inact(wlc, bandunit);

 if (!wlc_hw->up)
  return;

 brcms_b_core_phy_clk(wlc_hw, ON);


 brcms_b_bsinit(wlc, chanspec);






 if (wlc->macintstatus)
  wlc->macintstatus = MI_DMAINT;


 brcms_intrsrestore(wlc->wl, macintmask);


 WARN_ON((bcma_read32(wlc_hw->d11core, D11REGOFFS(maccontrol)) &
   MCTL_EN_MAC) != 0);
}
