
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint ;
struct brcms_hardware {int up; int sbclk; int clk; int sih; int noreset; TYPE_2__* wlc; int d11core; TYPE_1__* band; } ;
struct TYPE_6__ {int wl; } ;
struct TYPE_5__ {int pi; } ;


 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 int OFF ;
 int ai_pci_down (int ) ;
 scalar_t__ bcma_core_is_enabled (int ) ;
 int bcma_read32 (int ,int ) ;
 int brcms_b_xtal (struct brcms_hardware*,int ) ;
 int brcms_c_coredisable (struct brcms_hardware*) ;
 int brcms_c_flushqueues (TYPE_2__*) ;
 int brcms_c_suspend_mac_and_wait (TYPE_2__*) ;
 int brcms_deviceremoved (TYPE_2__*) ;
 scalar_t__ brcms_reset (int ) ;
 int maccontrol ;
 int wlc_phy_hw_clk_state_upd (int ,int) ;
 int wlc_phy_hw_state_upd (int ,int) ;

__attribute__((used)) static int brcms_b_down_finish(struct brcms_hardware *wlc_hw)
{
 uint callbacks = 0;
 bool dev_gone;

 if (!wlc_hw->up)
  return callbacks;

 wlc_hw->up = 0;
 wlc_phy_hw_state_upd(wlc_hw->band->pi, 0);

 dev_gone = brcms_deviceremoved(wlc_hw->wlc);

 if (dev_gone) {
  wlc_hw->sbclk = 0;
  wlc_hw->clk = 0;
  wlc_phy_hw_clk_state_upd(wlc_hw->band->pi, 0);


  brcms_c_flushqueues(wlc_hw->wlc);
 } else {


  if (bcma_core_is_enabled(wlc_hw->d11core)) {
   if (bcma_read32(wlc_hw->d11core,
     D11REGOFFS(maccontrol)) & MCTL_EN_MAC)
    brcms_c_suspend_mac_and_wait(wlc_hw->wlc);
   callbacks += brcms_reset(wlc_hw->wlc->wl);
   brcms_c_coredisable(wlc_hw);
  }


  if (!wlc_hw->noreset) {
   ai_pci_down(wlc_hw->sih);
   brcms_b_xtal(wlc_hw, OFF);
  }
 }

 return callbacks;
}
