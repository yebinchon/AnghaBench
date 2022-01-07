
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_hardware {int forcefastclk; TYPE_1__* band; } ;
struct TYPE_2__ {int pi; } ;


 int BCMA_CLKMODE_DYNAMIC ;
 int BCMA_CLKMODE_FAST ;
 int brcms_b_clkctl_clk (struct brcms_hardware*,int ) ;
 int brcms_b_phy_reset (struct brcms_hardware*) ;
 int wlc_phy_bw_state_set (int ,int ) ;
 int wlc_phy_chanspec_get (int ) ;
 int wlc_phy_init (int ,int ) ;

void brcms_b_bw_set(struct brcms_hardware *wlc_hw, u16 bw)
{
 bool fastclk;


 fastclk = wlc_hw->forcefastclk;
 if (!fastclk)
  brcms_b_clkctl_clk(wlc_hw, BCMA_CLKMODE_FAST);

 wlc_phy_bw_state_set(wlc_hw->band->pi, bw);

 brcms_b_phy_reset(wlc_hw);
 wlc_phy_init(wlc_hw->band->pi, wlc_phy_chanspec_get(wlc_hw->band->pi));


 if (!fastclk)
  brcms_b_clkctl_clk(wlc_hw, BCMA_CLKMODE_DYNAMIC);
}
