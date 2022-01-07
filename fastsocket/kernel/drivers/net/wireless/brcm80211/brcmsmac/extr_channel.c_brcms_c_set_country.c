
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_regd {int dummy; } ;
struct brcms_cm_info {struct brcms_c_info* wlc; } ;
struct brcms_c_info {TYPE_2__* protection; int * bandstate; TYPE_1__* pub; } ;
struct TYPE_4__ {int nmode_user; int gmode_user; } ;
struct TYPE_3__ {int _n_enab; } ;


 size_t BAND_2G_INDEX ;
 size_t BAND_5G_INDEX ;
 int SUPPORT_11N ;
 int brcms_c_set_gmode (struct brcms_c_info*,int ,int) ;
 int brcms_c_set_nmode (struct brcms_c_info*) ;
 int brcms_c_stf_ss_update (struct brcms_c_info*,int ) ;

__attribute__((used)) static void
brcms_c_set_country(struct brcms_cm_info *wlc_cm,
      const struct brcms_regd *regd)
{
 struct brcms_c_info *wlc = wlc_cm->wlc;

 if ((wlc->pub->_n_enab & SUPPORT_11N) !=
     wlc->protection->nmode_user)
  brcms_c_set_nmode(wlc);

 brcms_c_stf_ss_update(wlc, wlc->bandstate[BAND_2G_INDEX]);
 brcms_c_stf_ss_update(wlc, wlc->bandstate[BAND_5G_INDEX]);

 brcms_c_set_gmode(wlc, wlc->protection->gmode_user, 0);

 return;
}
