
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_pa_cfg {int enable; void* P2; void* P1; void* P0; void* action; TYPE_1__ hdr; } ;
typedef void* int8_t ;
typedef int cmd ;


 int CMD_802_11_PA_CFG ;
 int CMD_ACT_SET ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_pa_cfg*) ;
 int memset (struct cmd_ds_802_11_pa_cfg*,int ,int) ;

int lbs_set_power_adapt_cfg(struct lbs_private *priv, int enable, int8_t p0,
  int8_t p1, int8_t p2)
{
 struct cmd_ds_802_11_pa_cfg cmd;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_ACT_SET);
 cmd.enable = !!enable;
 cmd.P0 = p0;
 cmd.P1 = p1;
 cmd.P2 = p2;

 ret = lbs_cmd_with_response(priv, CMD_802_11_PA_CFG , &cmd);

 return ret;
}
