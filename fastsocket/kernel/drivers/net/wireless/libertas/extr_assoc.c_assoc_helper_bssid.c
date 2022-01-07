
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int dummy; } ;
struct bss_descriptor {int dummy; } ;
struct assoc_request {int bssid; scalar_t__ mode; int bss; } ;


 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int LBS_DEB_ASSOC ;
 int lbs_adhoc_join (struct lbs_private*,struct assoc_request*) ;
 int lbs_deb_assoc (char*,int) ;
 int lbs_deb_enter_args (int ,char*,int) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 struct bss_descriptor* lbs_find_bssid_in_list (struct lbs_private*,int,scalar_t__) ;
 int lbs_try_associate (struct lbs_private*,struct assoc_request*) ;
 int memcpy (int *,struct bss_descriptor*,int) ;

__attribute__((used)) static int assoc_helper_bssid(struct lbs_private *priv,
                              struct assoc_request * assoc_req)
{
 int ret = 0;
 struct bss_descriptor * bss;

 lbs_deb_enter_args(LBS_DEB_ASSOC, "BSSID %pM", assoc_req->bssid);


 bss = lbs_find_bssid_in_list(priv, assoc_req->bssid,
       assoc_req->mode);
 if (bss == ((void*)0)) {
  lbs_deb_assoc("ASSOC: WAP: BSSID %pM not found, "
   "cannot associate.\n", assoc_req->bssid);
  goto out;
 }

 memcpy(&assoc_req->bss, bss, sizeof(struct bss_descriptor));
 if (assoc_req->mode == IW_MODE_INFRA) {
  ret = lbs_try_associate(priv, assoc_req);
  lbs_deb_assoc("ASSOC: lbs_try_associate(bssid) returned %d\n",
         ret);
 } else if (assoc_req->mode == IW_MODE_ADHOC) {
  lbs_adhoc_join(priv, assoc_req);
 }

out:
 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
