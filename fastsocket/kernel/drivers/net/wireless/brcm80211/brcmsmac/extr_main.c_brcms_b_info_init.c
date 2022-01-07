
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_hardware {int shortslot; int chanspec; int LRL; int SRL; int LFBL; int SFBL; struct brcms_c_info* wlc; } ;
struct brcms_c_info {int defmacintmask; } ;


 int DEF_MACINTMASK ;
 int RETRY_LONG_DEF ;
 int RETRY_LONG_FB ;
 int RETRY_SHORT_DEF ;
 int RETRY_SHORT_FB ;
 int ch20mhz_chspec (int) ;

__attribute__((used)) static void brcms_b_info_init(struct brcms_hardware *wlc_hw)
{
 struct brcms_c_info *wlc = wlc_hw->wlc;


 wlc->defmacintmask = DEF_MACINTMASK;


 wlc_hw->shortslot = 0;

 wlc_hw->SFBL = RETRY_SHORT_FB;
 wlc_hw->LFBL = RETRY_LONG_FB;


 wlc_hw->SRL = RETRY_SHORT_DEF;
 wlc_hw->LRL = RETRY_LONG_DEF;
 wlc_hw->chanspec = ch20mhz_chspec(1);
}
