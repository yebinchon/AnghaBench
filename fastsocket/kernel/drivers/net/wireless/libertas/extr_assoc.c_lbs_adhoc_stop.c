
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct cmd_ds_802_11_ad_hoc_stop {TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_AD_HOC_STOP ;
 int LBS_DEB_ASSOC ;
 int LBS_DEB_JOIN ;
 int cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_ad_hoc_stop*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_mac_event_disconnected (struct lbs_private*) ;
 int memset (struct cmd_ds_802_11_ad_hoc_stop*,int ,int) ;

int lbs_adhoc_stop(struct lbs_private *priv)
{
 struct cmd_ds_802_11_ad_hoc_stop cmd;
 int ret;

 lbs_deb_enter(LBS_DEB_JOIN);

 memset(&cmd, 0, sizeof (cmd));
 cmd.hdr.size = cpu_to_le16 (sizeof (cmd));

 ret = lbs_cmd_with_response(priv, CMD_802_11_AD_HOC_STOP, &cmd);


 lbs_mac_event_disconnected(priv);

 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
