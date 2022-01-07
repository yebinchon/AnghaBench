
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct lbs_private {int secinfo; } ;
struct lbs_802_11_security {int dummy; } ;
struct TYPE_2__ {scalar_t__ WPA2enabled; scalar_t__ WPAenabled; } ;
struct assoc_request {TYPE_1__ secinfo; } ;


 int CMD_ACT_GET ;
 int CMD_ACT_SET ;
 int LBS_DEB_ASSOC ;
 int lbs_cmd_802_11_enable_rsn (struct lbs_private*,int ,int*) ;
 int lbs_deb_assoc (char*,int) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_set_mac_control (struct lbs_private*) ;
 int memcpy (int *,TYPE_1__*,int) ;

__attribute__((used)) static int assoc_helper_secinfo(struct lbs_private *priv,
                                struct assoc_request * assoc_req)
{
 int ret = 0;
 uint16_t do_wpa;
 uint16_t rsn = 0;

 lbs_deb_enter(LBS_DEB_ASSOC);

 memcpy(&priv->secinfo, &assoc_req->secinfo,
  sizeof(struct lbs_802_11_security));

 lbs_set_mac_control(priv);







 ret = lbs_cmd_802_11_enable_rsn(priv, CMD_ACT_GET, &rsn);
 if (ret) {
  lbs_deb_assoc("Failed to get RSN status: %d\n", ret);
  goto out;
 }


 do_wpa = assoc_req->secinfo.WPAenabled || assoc_req->secinfo.WPA2enabled;
 if (do_wpa == rsn)
  goto out;


 ret = lbs_cmd_802_11_enable_rsn(priv, CMD_ACT_SET, &do_wpa);

out:
 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
