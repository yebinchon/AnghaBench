
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cmd_ds_802_11_ps_mode {void* multipledtim; int nullpktinterval; int locallisteninterval; void* action; } ;
struct TYPE_2__ {struct cmd_ds_802_11_ps_mode psmode; } ;
struct cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 int CMD_802_11_PS_MODE ;



 int LBS_DEB_CMD ;
 int MRVDRV_DEFAULT_MULTIPLE_DTIM ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int) ;
 int lbs_deb_cmd (char*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;

__attribute__((used)) static int lbs_cmd_802_11_ps_mode(struct cmd_ds_command *cmd,
       u16 cmd_action)
{
 struct cmd_ds_802_11_ps_mode *psm = &cmd->params.psmode;

 lbs_deb_enter(LBS_DEB_CMD);

 cmd->command = cpu_to_le16(CMD_802_11_PS_MODE);
 cmd->size = cpu_to_le16(sizeof(struct cmd_ds_802_11_ps_mode) +
    S_DS_GEN);
 psm->action = cpu_to_le16(cmd_action);
 psm->multipledtim = 0;
 switch (cmd_action) {
 case 130:
  lbs_deb_cmd("PS command:" "SubCode- Enter PS\n");

  psm->locallisteninterval = 0;
  psm->nullpktinterval = 0;
  psm->multipledtim =
      cpu_to_le16(MRVDRV_DEFAULT_MULTIPLE_DTIM);
  break;

 case 129:
  lbs_deb_cmd("PS command:" "SubCode- Exit PS\n");
  break;

 case 128:
  lbs_deb_cmd("PS command: SubCode- sleep confirm\n");
  break;

 default:
  break;
 }

 lbs_deb_leave(LBS_DEB_CMD);
 return 0;
}
