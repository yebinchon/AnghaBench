
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* pub; } ;
struct TYPE_2__ {scalar_t__ up; } ;


 int brcms_c_update_beacon (struct brcms_c_info*) ;
 int brcms_c_update_probe_resp (struct brcms_c_info*,int) ;

__attribute__((used)) static void brcms_c_ht_update_sgi_rx(struct brcms_c_info *wlc, int val)
{
 if (wlc->pub->up) {
  brcms_c_update_beacon(wlc);
  brcms_c_update_probe_resp(wlc, 1);
 }
}
