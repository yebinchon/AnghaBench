
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ result; void* size; void* command; } ;
struct cmd_ds_mesh_access {void* action; TYPE_1__ hdr; } ;


 int CMD_MESH_ACCESS ;
 int LBS_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int,struct cmd_ds_mesh_access*) ;
 int lbs_deb_enter_args (int ,char*,int) ;
 int lbs_deb_leave (int ) ;

int lbs_mesh_access(struct lbs_private *priv, uint16_t cmd_action,
      struct cmd_ds_mesh_access *cmd)
{
 int ret;

 lbs_deb_enter_args(LBS_DEB_CMD, "action %d", cmd_action);

 cmd->hdr.command = cpu_to_le16(CMD_MESH_ACCESS);
 cmd->hdr.size = cpu_to_le16(sizeof(*cmd));
 cmd->hdr.result = 0;

 cmd->action = cpu_to_le16(cmd_action);

 ret = lbs_cmd_with_response(priv, CMD_MESH_ACCESS, cmd);

 lbs_deb_leave(LBS_DEB_CMD);
 return ret;
}
