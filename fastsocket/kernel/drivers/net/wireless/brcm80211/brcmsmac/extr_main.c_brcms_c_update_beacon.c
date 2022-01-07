
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int defmacintmask; struct brcms_bss_cfg* bsscfg; } ;
struct brcms_bss_cfg {int BSS; scalar_t__ up; } ;


 int MI_BCNTPL ;

void brcms_c_update_beacon(struct brcms_c_info *wlc)
{
 struct brcms_bss_cfg *bsscfg = wlc->bsscfg;

 if (bsscfg->up && !bsscfg->BSS)

  wlc->defmacintmask &= ~MI_BCNTPL;
}
