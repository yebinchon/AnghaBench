
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_c_info {scalar_t__ shortslot_override; int shortslot; TYPE_2__* pub; TYPE_1__* band; } ;
typedef scalar_t__ s8 ;
struct TYPE_4__ {scalar_t__ up; scalar_t__ associated; } ;
struct TYPE_3__ {scalar_t__ bandtype; } ;


 scalar_t__ BRCMS_SHORTSLOT_AUTO ;
 scalar_t__ BRCMS_SHORTSLOT_ON ;
 scalar_t__ BRCM_BAND_5G ;
 int brcms_c_switch_shortslot (struct brcms_c_info*,int) ;

void brcms_c_set_shortslot_override(struct brcms_c_info *wlc, s8 sslot_override)
{
 wlc->shortslot_override = sslot_override;





 if (wlc->band->bandtype == BRCM_BAND_5G)
  return;

 if (wlc->pub->up && wlc->pub->associated) {

 } else if (wlc->pub->up) {

  brcms_c_switch_shortslot(wlc, 0);
 } else {


  if (wlc->shortslot_override == BRCMS_SHORTSLOT_AUTO)
   wlc->shortslot = 0;
  else
   wlc->shortslot =
       (wlc->shortslot_override ==
        BRCMS_SHORTSLOT_ON);
 }
}
