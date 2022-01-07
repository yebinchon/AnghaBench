
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct brcms_hardware {int d11core; int clk; } ;
struct brcms_c_info {scalar_t__ macintstatus; scalar_t__ macintmask; struct brcms_hardware* hw; } ;


 int D11REGOFFS (scalar_t__) ;
 int bcma_read32 (int ,int ) ;
 int bcma_write32 (int ,int ,int ) ;
 int udelay (int) ;

u32 brcms_c_intrsoff(struct brcms_c_info *wlc)
{
 struct brcms_hardware *wlc_hw = wlc->hw;
 u32 macintmask;

 if (!wlc_hw->clk)
  return 0;

 macintmask = wlc->macintmask;

 bcma_write32(wlc_hw->d11core, D11REGOFFS(macintmask), 0);
 (void)bcma_read32(wlc_hw->d11core, D11REGOFFS(macintmask));
 udelay(1);
 wlc->macintmask = 0;


 return wlc->macintstatus ? 0 : macintmask;
}
