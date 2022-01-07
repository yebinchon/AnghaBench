
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct sleep_params {int sp_error; int sp_offset; int sp_stabletime; int sp_reserved; int sp_extsleepclk; int sp_calcontrol; } ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_sleep_params {void* reserved; int externalsleepclk; int calcontrol; void* stabletime; void* offset; void* error; void* action; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_SLEEP_PARAMS ;
 int CMD_ACT_GET ;
 int LBS_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_sleep_params*) ;
 int lbs_deb_cmd (char*,void*,void*,void*,int ,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 void* le16_to_cpu (void*) ;
 int memset (struct cmd_ds_802_11_sleep_params*,int ,int) ;

int lbs_cmd_802_11_sleep_params(struct lbs_private *priv, uint16_t cmd_action,
    struct sleep_params *sp)
{
 struct cmd_ds_802_11_sleep_params cmd;
 int ret;

 lbs_deb_enter(LBS_DEB_CMD);

 if (cmd_action == CMD_ACT_GET) {
  memset(&cmd, 0, sizeof(cmd));
 } else {
  cmd.error = cpu_to_le16(sp->sp_error);
  cmd.offset = cpu_to_le16(sp->sp_offset);
  cmd.stabletime = cpu_to_le16(sp->sp_stabletime);
  cmd.calcontrol = sp->sp_calcontrol;
  cmd.externalsleepclk = sp->sp_extsleepclk;
  cmd.reserved = cpu_to_le16(sp->sp_reserved);
 }
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(cmd_action);

 ret = lbs_cmd_with_response(priv, CMD_802_11_SLEEP_PARAMS, &cmd);

 if (!ret) {
  lbs_deb_cmd("error 0x%x, offset 0x%x, stabletime 0x%x, "
       "calcontrol 0x%x extsleepclk 0x%x\n",
       le16_to_cpu(cmd.error), le16_to_cpu(cmd.offset),
       le16_to_cpu(cmd.stabletime), cmd.calcontrol,
       cmd.externalsleepclk);

  sp->sp_error = le16_to_cpu(cmd.error);
  sp->sp_offset = le16_to_cpu(cmd.offset);
  sp->sp_stabletime = le16_to_cpu(cmd.stabletime);
  sp->sp_calcontrol = cmd.calcontrol;
  sp->sp_extsleepclk = cmd.externalsleepclk;
  sp->sp_reserved = le16_to_cpu(cmd.reserved);
 }

 lbs_deb_leave_args(LBS_DEB_CMD, "ret %d", ret);
 return 0;
}
