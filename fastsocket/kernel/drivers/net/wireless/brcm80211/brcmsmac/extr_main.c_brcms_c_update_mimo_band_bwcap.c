
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
typedef scalar_t__ u8 ;
struct brcms_c_info {struct brcms_band** bandstate; TYPE_1__* pub; } ;
struct brcms_band {scalar_t__ bandtype; int mimo_cap_40; } ;
struct TYPE_2__ {size_t _nbands; } ;


 scalar_t__ BRCMS_N_BW_20IN2G_40IN5G ;
 scalar_t__ BRCMS_N_BW_40ALL ;
 scalar_t__ BRCM_BAND_5G ;

__attribute__((used)) static void brcms_c_update_mimo_band_bwcap(struct brcms_c_info *wlc, u8 bwcap)
{
 uint i;
 struct brcms_band *band;

 for (i = 0; i < wlc->pub->_nbands; i++) {
  band = wlc->bandstate[i];
  if (band->bandtype == BRCM_BAND_5G) {
   if ((bwcap == BRCMS_N_BW_40ALL)
       || (bwcap == BRCMS_N_BW_20IN2G_40IN5G))
    band->mimo_cap_40 = 1;
   else
    band->mimo_cap_40 = 0;
  } else {
   if (bwcap == BRCMS_N_BW_40ALL)
    band->mimo_cap_40 = 1;
   else
    band->mimo_cap_40 = 0;
  }
 }
}
