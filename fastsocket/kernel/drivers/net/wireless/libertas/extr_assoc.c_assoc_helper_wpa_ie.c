
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {scalar_t__ wpa_ie_len; int wpa_ie; } ;
struct TYPE_2__ {scalar_t__ WPA2enabled; scalar_t__ WPAenabled; } ;
struct assoc_request {scalar_t__ wpa_ie_len; int wpa_ie; TYPE_1__ secinfo; } ;


 int LBS_DEB_ASSOC ;
 int MAX_WPA_IE_LEN ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static int assoc_helper_wpa_ie(struct lbs_private *priv,
                               struct assoc_request * assoc_req)
{
 int ret = 0;

 lbs_deb_enter(LBS_DEB_ASSOC);

 if (assoc_req->secinfo.WPAenabled || assoc_req->secinfo.WPA2enabled) {
  memcpy(&priv->wpa_ie, &assoc_req->wpa_ie, assoc_req->wpa_ie_len);
  priv->wpa_ie_len = assoc_req->wpa_ie_len;
 } else {
  memset(&priv->wpa_ie, 0, MAX_WPA_IE_LEN);
  priv->wpa_ie_len = 0;
 }

 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
