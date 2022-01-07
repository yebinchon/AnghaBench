
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_c_info {TYPE_2__** bandstate; TYPE_1__* stf; } ;
typedef void* s8 ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {void* band_stf_stbc_tx; } ;
struct TYPE_3__ {int txstreams; } ;


 scalar_t__ AUTO ;
 size_t BAND_2G_INDEX ;
 size_t BAND_5G_INDEX ;
 scalar_t__ OFF ;
 scalar_t__ ON ;

__attribute__((used)) static bool brcms_c_stf_stbc_tx_set(struct brcms_c_info *wlc, s32 int_val)
{
 if ((int_val != AUTO) && (int_val != OFF) && (int_val != ON))
  return 0;

 if ((int_val == ON) && (wlc->stf->txstreams == 1))
  return 0;

 wlc->bandstate[BAND_2G_INDEX]->band_stf_stbc_tx = (s8) int_val;
 wlc->bandstate[BAND_5G_INDEX]->band_stf_stbc_tx = (s8) int_val;

 return 1;
}
