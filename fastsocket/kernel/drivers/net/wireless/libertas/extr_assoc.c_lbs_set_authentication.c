
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct cmd_ds_802_11_authenticate {int authtype; int bssid; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_AUTHENTICATE ;
 int ETH_ALEN ;
 int LBS_DEB_JOIN ;
 int cpu_to_le16 (int) ;
 int iw_auth_to_ieee_auth (int ) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_authenticate*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_join (char*,int *,int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int lbs_set_authentication(struct lbs_private *priv, u8 bssid[6], u8 auth)
{
 struct cmd_ds_802_11_authenticate cmd;
 int ret = -1;

 lbs_deb_enter(LBS_DEB_JOIN);

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 memcpy(cmd.bssid, bssid, ETH_ALEN);

 cmd.authtype = iw_auth_to_ieee_auth(auth);

 lbs_deb_join("AUTH_CMD: BSSID %pM, auth 0x%x\n", bssid, cmd.authtype);

 ret = lbs_cmd_with_response(priv, CMD_802_11_AUTHENTICATE, &cmd);

 lbs_deb_leave_args(LBS_DEB_JOIN, "ret %d", ret);
 return ret;
}
