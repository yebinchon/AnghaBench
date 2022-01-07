
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct lbs_private {scalar_t__ beacon_period; scalar_t__ beacon_enable; } ;
struct cmd_ds_802_11_beacon_control {void* beacon_period; void* beacon_enable; void* action; } ;
struct TYPE_2__ {struct cmd_ds_802_11_beacon_control bcn_ctrl; } ;
struct cmd_ds_command {void* command; void* size; TYPE_1__ params; } ;


 scalar_t__ CMD_802_11_BEACON_CTRL ;
 int LBS_DEB_CMD ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;

__attribute__((used)) static int lbs_cmd_bcn_ctrl(struct lbs_private * priv,
    struct cmd_ds_command *cmd,
    u16 cmd_action)
{
 struct cmd_ds_802_11_beacon_control
  *bcn_ctrl = &cmd->params.bcn_ctrl;

 lbs_deb_enter(LBS_DEB_CMD);
 cmd->size =
     cpu_to_le16(sizeof(struct cmd_ds_802_11_beacon_control)
        + S_DS_GEN);
 cmd->command = cpu_to_le16(CMD_802_11_BEACON_CTRL);

 bcn_ctrl->action = cpu_to_le16(cmd_action);
 bcn_ctrl->beacon_enable = cpu_to_le16(priv->beacon_enable);
 bcn_ctrl->beacon_period = cpu_to_le16(priv->beacon_period);

 lbs_deb_leave(LBS_DEB_CMD);
 return 0;
}
