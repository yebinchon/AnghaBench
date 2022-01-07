
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcms_c_info {int asi; TYPE_3__* band; TYPE_2__* pub; TYPE_1__* hw; } ;
struct TYPE_6__ {int bandunit; } ;
struct TYPE_5__ {int unit; } ;
struct TYPE_4__ {int d11core; } ;


 int brcms_c_antsel_init (int ) ;
 int brcms_c_set_ratetable (struct brcms_c_info*) ;
 int brcms_c_ucode_mac_upd (struct brcms_c_info*) ;
 int brcms_dbg_info (int ,char*,int ,int ) ;

__attribute__((used)) static void brcms_c_bsinit(struct brcms_c_info *wlc)
{
 brcms_dbg_info(wlc->hw->d11core, "wl%d: bandunit %d\n",
         wlc->pub->unit, wlc->band->bandunit);


 brcms_c_set_ratetable(wlc);


 brcms_c_ucode_mac_upd(wlc);


 brcms_c_antsel_init(wlc->asi);

}
