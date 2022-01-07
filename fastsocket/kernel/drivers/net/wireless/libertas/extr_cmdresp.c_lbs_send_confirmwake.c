
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lbs_private {int seqnum; int (* hw_host_to_card ) (struct lbs_private*,int ,int *,int) ;} ;
struct cmd_header {scalar_t__ result; void* seqnum; void* size; void* command; } ;
typedef int cmd ;


 int CMD_802_11_WAKEUP_CONFIRM ;
 int LBS_DEB_HOST ;
 int MVMS_CMD ;
 void* cpu_to_le16 (int) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_hex (int ,char*,int *,int) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_pr_alert (char*) ;
 int stub1 (struct lbs_private*,int ,int *,int) ;

__attribute__((used)) static int lbs_send_confirmwake(struct lbs_private *priv)
{
 struct cmd_header cmd;
 int ret = 0;

 lbs_deb_enter(LBS_DEB_HOST);

 cmd.command = cpu_to_le16(CMD_802_11_WAKEUP_CONFIRM);
 cmd.size = cpu_to_le16(sizeof(cmd));
 cmd.seqnum = cpu_to_le16(++priv->seqnum);
 cmd.result = 0;

 lbs_deb_hex(LBS_DEB_HOST, "wake confirm", (u8 *) &cmd,
  sizeof(cmd));

 ret = priv->hw_host_to_card(priv, MVMS_CMD, (u8 *) &cmd, sizeof(cmd));
 if (ret)
  lbs_pr_alert("SEND_WAKEC_CMD: Host to Card failed for Confirm Wake\n");

 lbs_deb_leave_args(LBS_DEB_HOST, "ret %d", ret);
 return ret;
}
