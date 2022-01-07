
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ssb_sprom {char* alpha2; } ;
struct brcms_pub {int srom_ccode; } ;
struct brcms_cm_info {TYPE_5__* world_regd; struct brcms_c_info* wlc; struct brcms_pub* pub; } ;
struct brcms_c_info {int autocountry_default; int country_default; struct brcms_pub* pub; struct brcms_cm_info* cmi; TYPE_3__* hw; } ;
struct TYPE_12__ {TYPE_4__* regdomain; } ;
struct TYPE_11__ {char* alpha2; } ;
struct TYPE_10__ {TYPE_2__* d11core; } ;
struct TYPE_9__ {TYPE_1__* bus; } ;
struct TYPE_8__ {struct ssb_sprom sprom; } ;


 int BRCM_CNTRY_BUF_SZ ;
 int GFP_ATOMIC ;
 scalar_t__ brcms_c_country_valid (char const*) ;
 int brcms_c_set_country (struct brcms_cm_info*,TYPE_5__*) ;
 TYPE_5__* brcms_default_world_regd () ;
 TYPE_5__* brcms_world_regd (char const*,int) ;
 struct brcms_cm_info* kzalloc (int,int ) ;
 int strncpy (int ,char const*,int) ;

struct brcms_cm_info *brcms_c_channel_mgr_attach(struct brcms_c_info *wlc)
{
 struct brcms_cm_info *wlc_cm;
 struct brcms_pub *pub = wlc->pub;
 struct ssb_sprom *sprom = &wlc->hw->d11core->bus->sprom;
 const char *ccode = sprom->alpha2;
 int ccode_len = sizeof(sprom->alpha2);

 wlc_cm = kzalloc(sizeof(struct brcms_cm_info), GFP_ATOMIC);
 if (wlc_cm == ((void*)0))
  return ((void*)0);
 wlc_cm->pub = pub;
 wlc_cm->wlc = wlc;
 wlc->cmi = wlc_cm;


 wlc_cm->world_regd = brcms_world_regd(ccode, ccode_len);
 if (brcms_c_country_valid(ccode))
  strncpy(wlc->pub->srom_ccode, ccode, ccode_len);





 if (!wlc_cm->world_regd) {
  wlc_cm->world_regd = brcms_default_world_regd();
  ccode = wlc_cm->world_regd->regdomain->alpha2;
  ccode_len = BRCM_CNTRY_BUF_SZ - 1;
 }


 strncpy(wlc->country_default, ccode, ccode_len);


 strncpy(wlc->autocountry_default, ccode, ccode_len);

 brcms_c_set_country(wlc_cm, wlc_cm->world_regd);

 return wlc_cm;
}
