
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {int filter_flags; TYPE_1__* pub; struct brcms_bss_cfg* bsscfg; } ;
struct brcms_bss_cfg {int BSS; scalar_t__ associated; } ;
struct TYPE_2__ {int associated; } ;


 int FIF_PROMISC_IN_BSS ;

__attribute__((used)) static bool brcms_c_ps_allowed(struct brcms_c_info *wlc)
{
 struct brcms_bss_cfg *cfg = wlc->bsscfg;


 if (!wlc->pub->associated)
  return 0;


 if (wlc->filter_flags & FIF_PROMISC_IN_BSS)
  return 0;

 if (cfg->associated) {




  if (!cfg->BSS)
   return 0;

  return 0;
 }

 return 1;
}
