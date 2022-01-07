
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_hardware {int up; TYPE_2__* wlc; TYPE_1__* band; } ;
struct TYPE_4__ {int wl; } ;
struct TYPE_3__ {int pi; } ;


 int BCMA_CLKMODE_DYNAMIC ;
 int brcms_b_clkctl_clk (struct brcms_hardware*,int ) ;
 int brcms_intrson (int ) ;
 int wlc_phy_hw_state_upd (int ,int) ;

__attribute__((used)) static int brcms_b_up_finish(struct brcms_hardware *wlc_hw)
{
 wlc_hw->up = 1;
 wlc_phy_hw_state_upd(wlc_hw->band->pi, 1);


 brcms_b_clkctl_clk(wlc_hw, BCMA_CLKMODE_DYNAMIC);
 brcms_intrson(wlc_hw->wlc->wl);
 return 0;
}
