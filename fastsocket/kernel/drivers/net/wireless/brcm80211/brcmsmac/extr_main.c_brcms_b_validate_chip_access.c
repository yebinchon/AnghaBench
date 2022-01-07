
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct wiphy {int dummy; } ;
struct brcms_hardware {int unit; TYPE_1__* wlc; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;
struct TYPE_2__ {struct wiphy* wiphy; } ;


 int D11REGOFFS (int ) ;
 scalar_t__ MCTL_GMODE ;
 scalar_t__ MCTL_IHR_EN ;
 scalar_t__ MCTL_WAKE ;
 scalar_t__ OBJADDR_SHM_SEL ;
 scalar_t__ bcma_read32 (struct bcma_device*,int ) ;
 int bcma_write32 (struct bcma_device*,int ,scalar_t__) ;
 int maccontrol ;
 int objaddr ;
 int objdata ;
 int tsf_cfpstart ;
 int wiphy_err (struct wiphy*,char*,int ,scalar_t__,...) ;

__attribute__((used)) static bool brcms_b_validate_chip_access(struct brcms_hardware *wlc_hw)
{
 struct bcma_device *core = wlc_hw->d11core;
 u32 w, val;
 struct wiphy *wiphy = wlc_hw->wlc->wiphy;



 bcma_write32(core, D11REGOFFS(objaddr), OBJADDR_SHM_SEL | 0);
 (void)bcma_read32(core, D11REGOFFS(objaddr));
 w = bcma_read32(core, D11REGOFFS(objdata));


 bcma_write32(core, D11REGOFFS(objaddr), OBJADDR_SHM_SEL | 0);
 (void)bcma_read32(core, D11REGOFFS(objaddr));
 bcma_write32(core, D11REGOFFS(objdata), (u32) 0xaa5555aa);

 bcma_write32(core, D11REGOFFS(objaddr), OBJADDR_SHM_SEL | 0);
 (void)bcma_read32(core, D11REGOFFS(objaddr));
 val = bcma_read32(core, D11REGOFFS(objdata));
 if (val != (u32) 0xaa5555aa) {
  wiphy_err(wiphy, "wl%d: validate_chip_access: SHM = 0x%x, "
     "expected 0xaa5555aa\n", wlc_hw->unit, val);
  return 0;
 }

 bcma_write32(core, D11REGOFFS(objaddr), OBJADDR_SHM_SEL | 0);
 (void)bcma_read32(core, D11REGOFFS(objaddr));
 bcma_write32(core, D11REGOFFS(objdata), (u32) 0x55aaaa55);

 bcma_write32(core, D11REGOFFS(objaddr), OBJADDR_SHM_SEL | 0);
 (void)bcma_read32(core, D11REGOFFS(objaddr));
 val = bcma_read32(core, D11REGOFFS(objdata));
 if (val != (u32) 0x55aaaa55) {
  wiphy_err(wiphy, "wl%d: validate_chip_access: SHM = 0x%x, "
     "expected 0x55aaaa55\n", wlc_hw->unit, val);
  return 0;
 }

 bcma_write32(core, D11REGOFFS(objaddr), OBJADDR_SHM_SEL | 0);
 (void)bcma_read32(core, D11REGOFFS(objaddr));
 bcma_write32(core, D11REGOFFS(objdata), w);


 bcma_write32(core, D11REGOFFS(tsf_cfpstart), 0);

 w = bcma_read32(core, D11REGOFFS(maccontrol));
 if ((w != (MCTL_IHR_EN | MCTL_WAKE)) &&
     (w != (MCTL_IHR_EN | MCTL_GMODE | MCTL_WAKE))) {
  wiphy_err(wiphy, "wl%d: validate_chip_access: maccontrol = "
     "0x%x, expected 0x%x or 0x%x\n", wlc_hw->unit, w,
     (MCTL_IHR_EN | MCTL_WAKE),
     (MCTL_IHR_EN | MCTL_GMODE | MCTL_WAKE));
  return 0;
 }

 return 1;
}
