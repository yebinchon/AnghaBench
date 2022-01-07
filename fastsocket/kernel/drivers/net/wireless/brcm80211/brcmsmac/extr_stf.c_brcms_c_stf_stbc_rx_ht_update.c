
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_c_info {TYPE_2__* pub; TYPE_1__* stf; } ;
struct TYPE_4__ {scalar_t__ up; } ;
struct TYPE_3__ {int rxstreams; } ;


 scalar_t__ BRCMS_STF_SS_STBC_RX (struct brcms_c_info*) ;
 int HT_CAP_RX_STBC_NO ;
 int brcms_c_update_beacon (struct brcms_c_info*) ;
 int brcms_c_update_probe_resp (struct brcms_c_info*,int) ;

__attribute__((used)) static void brcms_c_stf_stbc_rx_ht_update(struct brcms_c_info *wlc, int val)
{

 if (BRCMS_STF_SS_STBC_RX(wlc)) {
  if ((wlc->stf->rxstreams == 1) && (val != HT_CAP_RX_STBC_NO))
   return;
 }

 if (wlc->pub->up) {
  brcms_c_update_beacon(wlc);
  brcms_c_update_probe_resp(wlc, 1);
 }
}
