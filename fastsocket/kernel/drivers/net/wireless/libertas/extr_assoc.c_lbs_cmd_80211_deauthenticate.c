
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_deauthenticate {void* reasoncode; int macaddr; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_DEAUTHENTICATE ;
 int ETH_ALEN ;
 int LBS_DEB_JOIN ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_deauthenticate*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_mac_event_disconnected (struct lbs_private*) ;
 int memcpy (int ,int *,int ) ;
 int memset (struct cmd_ds_802_11_deauthenticate*,int ,int) ;

int lbs_cmd_80211_deauthenticate(struct lbs_private *priv, u8 bssid[ETH_ALEN],
     u16 reason)
{
 struct cmd_ds_802_11_deauthenticate cmd;
 int ret;

 lbs_deb_enter(LBS_DEB_JOIN);

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 memcpy(cmd.macaddr, &bssid[0], ETH_ALEN);
 cmd.reasoncode = cpu_to_le16(reason);

 ret = lbs_cmd_with_response(priv, CMD_802_11_DEAUTHENTICATE, &cmd);




 lbs_mac_event_disconnected(priv);

 lbs_deb_leave(LBS_DEB_JOIN);
 return ret;
}
