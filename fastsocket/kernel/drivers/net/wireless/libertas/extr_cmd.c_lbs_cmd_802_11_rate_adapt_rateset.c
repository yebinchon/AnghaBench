
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct lbs_private {int enablehwauto; void* ratebitmap; int cur_rate; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rate_adapt_rateset {void* enablehwauto; void* bitmap; void* action; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_RATE_ADAPT_RATESET ;
 int CMD_ACT_GET ;
 int EINVAL ;
 int LBS_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_rate_adapt_rateset*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 void* lbs_rate_to_fw_bitmap (int ,int) ;
 void* le16_to_cpu (void*) ;

int lbs_cmd_802_11_rate_adapt_rateset(struct lbs_private *priv,
          uint16_t cmd_action)
{
 struct cmd_ds_802_11_rate_adapt_rateset cmd;
 int ret;

 lbs_deb_enter(LBS_DEB_CMD);

 if (!priv->cur_rate && !priv->enablehwauto)
  return -EINVAL;

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));

 cmd.action = cpu_to_le16(cmd_action);
 cmd.enablehwauto = cpu_to_le16(priv->enablehwauto);
 cmd.bitmap = lbs_rate_to_fw_bitmap(priv->cur_rate, priv->enablehwauto);
 ret = lbs_cmd_with_response(priv, CMD_802_11_RATE_ADAPT_RATESET, &cmd);
 if (!ret && cmd_action == CMD_ACT_GET) {
  priv->ratebitmap = le16_to_cpu(cmd.bitmap);
  priv->enablehwauto = le16_to_cpu(cmd.enablehwauto);
 }

 lbs_deb_leave_args(LBS_DEB_CMD, "ret %d", ret);
 return ret;
}
