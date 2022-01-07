
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_hardware {TYPE_1__* band; int unit; int d11core; } ;
struct TYPE_2__ {int phyrev; struct brcms_phy_pub* pi; } ;


 scalar_t__ BRCMS_ISNPHY (TYPE_1__*) ;
 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ NREV_LE (int ,int) ;
 int ON ;
 int SICF_BWMASK ;
 int SICF_PCLKE ;
 int SICF_PRST ;
 int brcms_b_core_ioctl (struct brcms_hardware*,int,int) ;
 int brcms_b_core_phy_clk (struct brcms_hardware*,int ) ;
 int brcms_b_core_phypll_reset (struct brcms_hardware*) ;
 int brcms_dbg_info (int ,char*,int ) ;
 int udelay (int) ;
 int wlc_phy_anacore (struct brcms_phy_pub*,int ) ;
 int wlc_phy_clk_bwbits (struct brcms_phy_pub*) ;

void brcms_b_phy_reset(struct brcms_hardware *wlc_hw)
{
 struct brcms_phy_pub *pih = wlc_hw->band->pi;
 u32 phy_bw_clkbits;
 bool phy_in_reset = 0;

 brcms_dbg_info(wlc_hw->d11core, "wl%d: reset phy\n", wlc_hw->unit);

 if (pih == ((void*)0))
  return;

 phy_bw_clkbits = wlc_phy_clk_bwbits(wlc_hw->band->pi);


 if (BRCMS_ISNPHY(wlc_hw->band) && NREV_GE(wlc_hw->band->phyrev, 3) &&
     NREV_LE(wlc_hw->band->phyrev, 4)) {

  brcms_b_core_ioctl(wlc_hw, SICF_BWMASK, phy_bw_clkbits);

  udelay(1);


  brcms_b_core_phypll_reset(wlc_hw);


  brcms_b_core_ioctl(wlc_hw, (SICF_PRST | SICF_PCLKE),
       (SICF_PRST | SICF_PCLKE));
  phy_in_reset = 1;
 } else {
  brcms_b_core_ioctl(wlc_hw,
       (SICF_PRST | SICF_PCLKE | SICF_BWMASK),
       (SICF_PRST | SICF_PCLKE | phy_bw_clkbits));
 }

 udelay(2);
 brcms_b_core_phy_clk(wlc_hw, ON);

 if (pih)
  wlc_phy_anacore(pih, ON);
}
