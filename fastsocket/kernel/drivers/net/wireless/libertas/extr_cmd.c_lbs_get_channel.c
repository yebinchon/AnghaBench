
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rf_channel {int channel; void* action; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_RF_CHANNEL ;
 int CMD_OPT_802_11_RF_CHANNEL_GET ;
 int LBS_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_rf_channel*) ;
 int lbs_deb_cmd (char*,int) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int le16_to_cpu (int ) ;
 int memset (struct cmd_ds_802_11_rf_channel*,int ,int) ;

int lbs_get_channel(struct lbs_private *priv)
{
 struct cmd_ds_802_11_rf_channel cmd;
 int ret = 0;

 lbs_deb_enter(LBS_DEB_CMD);

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_OPT_802_11_RF_CHANNEL_GET);

 ret = lbs_cmd_with_response(priv, CMD_802_11_RF_CHANNEL, &cmd);
 if (ret)
  goto out;

 ret = le16_to_cpu(cmd.channel);
 lbs_deb_cmd("current radio channel is %d\n", ret);

out:
 lbs_deb_leave_args(LBS_DEB_CMD, "ret %d", ret);
 return ret;
}
