
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_c_info {TYPE_2__* bsscfg; TYPE_1__* pub; } ;
struct TYPE_4__ {int associated; } ;
struct TYPE_3__ {int associated; } ;



void brcms_c_associate_upd(struct brcms_c_info *wlc, bool state)
{
 wlc->pub->associated = state;
 wlc->bsscfg->associated = state;
}
