
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint ;
struct brcms_c_info {TYPE_5__* default_bss; TYPE_4__** bandstate; TYPE_2__* pub; TYPE_1__* stf; } ;
typedef scalar_t__ s32 ;
struct TYPE_12__ {int mcs; } ;
struct TYPE_11__ {TYPE_6__ rateset; int flags; } ;
struct TYPE_9__ {int mcs; } ;
struct TYPE_10__ {TYPE_3__ hw_rateset; } ;
struct TYPE_8__ {size_t _nbands; int _n_enab; } ;
struct TYPE_7__ {scalar_t__ txstreams; } ;


 scalar_t__ AUTO ;
 int BRCMS_BSS_HT ;
 int GMODE_AUTO ;
 int MCSSET_LEN ;
 int SUPPORT_11N ;
 int SUPPORT_HT ;
 scalar_t__ WL_11N_2x2 ;
 scalar_t__ WL_11N_3x3 ;
 int brcms_c_rateset_mcs_build (TYPE_6__*,scalar_t__) ;
 int brcms_c_set_gmode (struct brcms_c_info*,int ,int) ;
 int memcpy (int ,int ,int ) ;

int brcms_c_set_nmode(struct brcms_c_info *wlc)
{
 uint i;
 s32 nmode = AUTO;

 if (wlc->stf->txstreams == WL_11N_3x3)
  nmode = WL_11N_3x3;
 else
  nmode = WL_11N_2x2;


 brcms_c_set_gmode(wlc, GMODE_AUTO, 1);
 if (nmode == WL_11N_3x3)
  wlc->pub->_n_enab = SUPPORT_HT;
 else
  wlc->pub->_n_enab = SUPPORT_11N;
 wlc->default_bss->flags |= BRCMS_BSS_HT;

 brcms_c_rateset_mcs_build(&wlc->default_bss->rateset,
         wlc->stf->txstreams);
 for (i = 0; i < wlc->pub->_nbands; i++)
  memcpy(wlc->bandstate[i]->hw_rateset.mcs,
         wlc->default_bss->rateset.mcs, MCSSET_LEN);

 return 0;
}
