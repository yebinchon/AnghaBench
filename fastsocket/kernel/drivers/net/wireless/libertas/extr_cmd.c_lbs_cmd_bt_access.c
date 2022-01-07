
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct cmd_ds_bt_access {void* id; int addr1; void* action; } ;
struct TYPE_2__ {struct cmd_ds_bt_access bt; } ;
struct cmd_ds_command {scalar_t__ result; void* size; void* command; TYPE_1__ params; } ;
 int CMD_BT_ACCESS ;
 int ETH_ALEN ;
 int LBS_DEB_CMD ;
 int LBS_DEB_MESH ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int lbs_deb_enter_args (int ,char*,int) ;
 int lbs_deb_hex (int ,char*,int ,int) ;
 int lbs_deb_leave (int ) ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static int lbs_cmd_bt_access(struct cmd_ds_command *cmd,
          u16 cmd_action, void *pdata_buf)
{
 struct cmd_ds_bt_access *bt_access = &cmd->params.bt;
 lbs_deb_enter_args(LBS_DEB_CMD, "action %d", cmd_action);

 cmd->command = cpu_to_le16(CMD_BT_ACCESS);
 cmd->size = cpu_to_le16(sizeof(struct cmd_ds_bt_access) + S_DS_GEN);
 cmd->result = 0;
 bt_access->action = cpu_to_le16(cmd_action);

 switch (cmd_action) {
 case 133:
  memcpy(bt_access->addr1, pdata_buf, 2 * ETH_ALEN);
  lbs_deb_hex(LBS_DEB_MESH, "BT_ADD: blinded MAC addr", bt_access->addr1, 6);
  break;
 case 132:
  memcpy(bt_access->addr1, pdata_buf, 1 * ETH_ALEN);
  lbs_deb_hex(LBS_DEB_MESH, "BT_DEL: blinded MAC addr", bt_access->addr1, 6);
  break;
 case 130:
  bt_access->id = cpu_to_le32(*(u32 *) pdata_buf);
  break;
 case 129:
  break;
 case 128:
  bt_access->id = cpu_to_le32(*(u32 *) pdata_buf);
  break;
 case 131:
  break;
 default:
  break;
 }
 lbs_deb_leave(LBS_DEB_CMD);
 return 0;
}
