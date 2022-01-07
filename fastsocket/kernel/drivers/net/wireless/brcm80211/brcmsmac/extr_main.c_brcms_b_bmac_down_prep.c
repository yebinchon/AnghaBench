
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct brcms_hardware {TYPE_1__* band; TYPE_2__* wlc; int up; } ;
struct TYPE_4__ {int wl; scalar_t__ macintmask; } ;
struct TYPE_3__ {int pi; } ;


 int BCMA_CLKMODE_FAST ;
 int brcms_b_clkctl_clk (struct brcms_hardware*,int ) ;
 int brcms_deviceremoved (TYPE_2__*) ;
 int brcms_intrsoff (int ) ;
 scalar_t__ wlc_phy_down (int ) ;

__attribute__((used)) static int brcms_b_bmac_down_prep(struct brcms_hardware *wlc_hw)
{
 bool dev_gone;
 uint callbacks = 0;

 if (!wlc_hw->up)
  return callbacks;

 dev_gone = brcms_deviceremoved(wlc_hw->wlc);


 if (dev_gone)
  wlc_hw->wlc->macintmask = 0;
 else {

  brcms_intrsoff(wlc_hw->wlc->wl);


  brcms_b_clkctl_clk(wlc_hw, BCMA_CLKMODE_FAST);
 }

 callbacks += wlc_phy_down(wlc_hw->band->pi);

 return callbacks;
}
