
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {scalar_t__ shortslot_override; int shortslot; int hw; } ;


 scalar_t__ BRCMS_SHORTSLOT_AUTO ;
 scalar_t__ BRCMS_SHORTSLOT_ON ;
 int brcms_b_set_shortslot (int ,int) ;

__attribute__((used)) static void brcms_c_switch_shortslot(struct brcms_c_info *wlc, bool shortslot)
{

 if (wlc->shortslot_override != BRCMS_SHORTSLOT_AUTO)
  shortslot = (wlc->shortslot_override == BRCMS_SHORTSLOT_ON);

 if (wlc->shortslot == shortslot)
  return;

 wlc->shortslot = shortslot;

 brcms_b_set_shortslot(wlc->hw, shortslot);
}
