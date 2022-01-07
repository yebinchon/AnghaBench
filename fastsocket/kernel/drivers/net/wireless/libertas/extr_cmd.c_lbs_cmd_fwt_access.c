
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct cmd_ds_fwt_access {void* action; } ;
struct TYPE_2__ {struct cmd_ds_fwt_access fwt; } ;
struct cmd_ds_command {scalar_t__ result; void* size; void* command; TYPE_1__ params; } ;


 scalar_t__ CMD_FWT_ACCESS ;
 int LBS_DEB_CMD ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;
 int lbs_deb_enter_args (int ,char*,scalar_t__) ;
 int lbs_deb_leave (int ) ;
 int memcpy (struct cmd_ds_fwt_access*,void*,int) ;
 int memset (struct cmd_ds_fwt_access*,int ,int) ;

__attribute__((used)) static int lbs_cmd_fwt_access(struct cmd_ds_command *cmd,
          u16 cmd_action, void *pdata_buf)
{
 struct cmd_ds_fwt_access *fwt_access = &cmd->params.fwt;
 lbs_deb_enter_args(LBS_DEB_CMD, "action %d", cmd_action);

 cmd->command = cpu_to_le16(CMD_FWT_ACCESS);
 cmd->size = cpu_to_le16(sizeof(struct cmd_ds_fwt_access) + S_DS_GEN);
 cmd->result = 0;

 if (pdata_buf)
  memcpy(fwt_access, pdata_buf, sizeof(*fwt_access));
 else
  memset(fwt_access, 0, sizeof(*fwt_access));

 fwt_access->action = cpu_to_le16(cmd_action);

 lbs_deb_leave(LBS_DEB_CMD);
 return 0;
}
