
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcms_hardware {int ucode_loaded; int boardflags; int boardrev; int sih; TYPE_2__* wlc; TYPE_1__* band; int unit; int d11core; } ;
struct TYPE_6__ {int hw_up; } ;
struct TYPE_5__ {TYPE_3__* pub; } ;
struct TYPE_4__ {int pi; } ;


 scalar_t__ BCM4313_CHIP_ID ;
 int BCMA_CLKMODE_FAST ;
 int BFL_FEM ;
 int BFL_FEM_BT ;
 int ON ;
 int ai_clkctl_init (int ) ;
 int ai_epa_4313war (int ) ;
 scalar_t__ ai_get_chip_id (int ) ;
 int brcms_b_clkctl_clk (struct brcms_hardware*,int ) ;
 int brcms_b_xtal (struct brcms_hardware*,int ) ;
 int brcms_dbg_info (int ,char*,int ) ;
 int wlc_phy_por_inform (int ) ;

__attribute__((used)) static void brcms_b_hw_up(struct brcms_hardware *wlc_hw)
{
 if (wlc_hw->wlc->pub->hw_up)
  return;

 brcms_dbg_info(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);





 brcms_b_xtal(wlc_hw, ON);
 ai_clkctl_init(wlc_hw->sih);
 brcms_b_clkctl_clk(wlc_hw, BCMA_CLKMODE_FAST);
 wlc_phy_por_inform(wlc_hw->band->pi);

 wlc_hw->ucode_loaded = 0;
 wlc_hw->wlc->pub->hw_up = 1;

 if ((wlc_hw->boardflags & BFL_FEM)
     && (ai_get_chip_id(wlc_hw->sih) == BCM4313_CHIP_ID)) {
  if (!
      (wlc_hw->boardrev >= 0x1250
       && (wlc_hw->boardflags & BFL_FEM_BT)))
   ai_epa_4313war(wlc_hw->sih);
 }
}
