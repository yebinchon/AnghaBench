
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_hardware {int sbclk; int clk; TYPE_1__* band; scalar_t__ pllreq; int unit; int d11core; } ;
struct TYPE_2__ {scalar_t__ pi; } ;


 int brcms_dbg_info (int ,char*,int ,int) ;
 int wlc_phy_hw_clk_state_upd (scalar_t__,int) ;

__attribute__((used)) static void brcms_b_xtal(struct brcms_hardware *wlc_hw, bool want)
{
 brcms_dbg_info(wlc_hw->d11core, "wl%d: want %d\n", wlc_hw->unit, want);





 if (!want && wlc_hw->pllreq)
  return;

 wlc_hw->sbclk = want;
 if (!wlc_hw->sbclk) {
  wlc_hw->clk = 0;
  if (wlc_hw->band && wlc_hw->band->pi)
   wlc_phy_hw_clk_state_upd(wlc_hw->band->pi, 0);
 }
}
