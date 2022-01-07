
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int auth_mode; } ;
struct lbs_private {int fwrelease; int capability; TYPE_2__ secinfo; } ;
struct TYPE_3__ {int capability; int bssid; } ;
struct assoc_request {TYPE_1__ bss; } ;


 int CMD_802_11_ASSOCIATE ;
 int LBS_DEB_ASSOC ;
 int RADIO_PREAMBLE_LONG ;
 int RADIO_PREAMBLE_SHORT ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int lbs_associate (struct lbs_private*,struct assoc_request*,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_set_authentication (struct lbs_private*,int ,int ) ;
 int lbs_set_radio (struct lbs_private*,int ,int) ;

__attribute__((used)) static int lbs_try_associate(struct lbs_private *priv,
 struct assoc_request *assoc_req)
{
 int ret;
 u8 preamble = RADIO_PREAMBLE_LONG;

 lbs_deb_enter(LBS_DEB_ASSOC);




 if (priv->fwrelease < 0x09000000) {
  ret = lbs_set_authentication(priv, assoc_req->bss.bssid,
          priv->secinfo.auth_mode);
  if (ret)
   goto out;
 }


 if ((priv->capability & WLAN_CAPABILITY_SHORT_PREAMBLE) &&
     (assoc_req->bss.capability & WLAN_CAPABILITY_SHORT_PREAMBLE))
  preamble = RADIO_PREAMBLE_SHORT;

 ret = lbs_set_radio(priv, preamble, 1);
 if (ret)
  goto out;

 ret = lbs_associate(priv, assoc_req, CMD_802_11_ASSOCIATE);

out:
 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
