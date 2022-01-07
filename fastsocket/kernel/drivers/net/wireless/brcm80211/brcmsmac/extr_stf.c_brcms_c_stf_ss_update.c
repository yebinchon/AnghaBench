
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct brcms_c_info {int hw; TYPE_1__* stf; struct brcms_band* band; } ;
struct brcms_band {scalar_t__ band_stf_ss_mode; } ;
struct TYPE_2__ {scalar_t__ ss_opmode; scalar_t__ ss_algo_channel; int txstreams; scalar_t__ ss_algosel_auto; } ;


 scalar_t__ BRCMS_STBC_CAP_PHY (struct brcms_c_info*) ;
 scalar_t__ PHY_TXC1_MODE_CDD ;
 scalar_t__ PHY_TXC1_MODE_SISO ;
 int brcms_b_band_stf_ss_set (int ,scalar_t__) ;
 scalar_t__ isset (scalar_t__*,scalar_t__) ;

int brcms_c_stf_ss_update(struct brcms_c_info *wlc, struct brcms_band *band)
{
 int ret_code = 0;
 u8 prev_stf_ss;
 u8 upd_stf_ss;

 prev_stf_ss = wlc->stf->ss_opmode;





 if (BRCMS_STBC_CAP_PHY(wlc) &&
     wlc->stf->ss_algosel_auto
     && (wlc->stf->ss_algo_channel != (u16) -1)) {
  upd_stf_ss = (wlc->stf->txstreams == 1 ||
         isset(&wlc->stf->ss_algo_channel,
        PHY_TXC1_MODE_SISO)) ?
        PHY_TXC1_MODE_SISO : PHY_TXC1_MODE_CDD;
 } else {
  if (wlc->band != band)
   return ret_code;
  upd_stf_ss = (wlc->stf->txstreams == 1) ?
    PHY_TXC1_MODE_SISO : band->band_stf_ss_mode;
 }
 if (prev_stf_ss != upd_stf_ss) {
  wlc->stf->ss_opmode = upd_stf_ss;
  brcms_b_band_stf_ss_set(wlc->hw, upd_stf_ss);
 }

 return ret_code;
}
