
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; void* command; } ;
struct cmd_ds_802_11_inactivity_timeout {void* timeout; void* action; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_INACTIVITY_TIMEOUT ;
 int CMD_ACT_SET ;
 int LBS_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int,struct cmd_ds_802_11_inactivity_timeout*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int le16_to_cpu (void*) ;

int lbs_cmd_802_11_inactivity_timeout(struct lbs_private *priv,
          uint16_t cmd_action, uint16_t *timeout)
{
 struct cmd_ds_802_11_inactivity_timeout cmd;
 int ret;

 lbs_deb_enter(LBS_DEB_CMD);

 cmd.hdr.command = cpu_to_le16(CMD_802_11_INACTIVITY_TIMEOUT);
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));

 cmd.action = cpu_to_le16(cmd_action);

 if (cmd_action == CMD_ACT_SET)
  cmd.timeout = cpu_to_le16(*timeout);
 else
  cmd.timeout = 0;

 ret = lbs_cmd_with_response(priv, CMD_802_11_INACTIVITY_TIMEOUT, &cmd);

 if (!ret)
  *timeout = le16_to_cpu(cmd.timeout);

 lbs_deb_leave_args(LBS_DEB_CMD, "ret %d", ret);
 return 0;
}
