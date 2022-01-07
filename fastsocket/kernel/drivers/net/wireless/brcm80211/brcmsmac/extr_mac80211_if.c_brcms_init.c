
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcms_info {int mute_tx; TYPE_3__* wlc; TYPE_2__* pub; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {int unit; } ;
struct TYPE_4__ {int d11core; } ;


 int brcms_c_init (TYPE_3__*,int ) ;
 int brcms_dbg_info (int ,char*,int ) ;
 int brcms_reset (struct brcms_info*) ;

void brcms_init(struct brcms_info *wl)
{
 brcms_dbg_info(wl->wlc->hw->d11core, "Initializing wl%d\n",
         wl->pub->unit);
 brcms_reset(wl);
 brcms_c_init(wl->wlc, wl->mute_tx);
}
