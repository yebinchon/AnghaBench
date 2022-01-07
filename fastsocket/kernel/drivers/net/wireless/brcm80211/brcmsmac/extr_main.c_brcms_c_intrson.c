
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_hardware {int d11core; } ;
struct brcms_c_info {int macintmask; int defmacintmask; struct brcms_hardware* hw; } ;


 int D11REGOFFS (int ) ;
 int bcma_write32 (int ,int ,int ) ;
 int macintmask ;

void brcms_c_intrson(struct brcms_c_info *wlc)
{
 struct brcms_hardware *wlc_hw = wlc->hw;
 wlc->macintmask = wlc->defmacintmask;
 bcma_write32(wlc_hw->d11core, D11REGOFFS(macintmask), wlc->macintmask);
}
