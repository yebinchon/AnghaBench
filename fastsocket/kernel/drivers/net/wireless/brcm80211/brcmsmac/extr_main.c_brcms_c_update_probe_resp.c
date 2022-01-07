
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {struct brcms_bss_cfg* bsscfg; } ;
struct brcms_bss_cfg {int BSS; scalar_t__ up; } ;


 int brcms_c_bss_update_probe_resp (struct brcms_c_info*,struct brcms_bss_cfg*,int) ;

void brcms_c_update_probe_resp(struct brcms_c_info *wlc, bool suspend)
{
 struct brcms_bss_cfg *bsscfg = wlc->bsscfg;


 if (bsscfg->up && !bsscfg->BSS)
  brcms_c_bss_update_probe_resp(wlc, bsscfg, suspend);
}
