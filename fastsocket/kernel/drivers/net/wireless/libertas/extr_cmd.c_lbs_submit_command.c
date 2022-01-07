
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int u8 ;
struct lbs_private {int (* hw_host_to_card ) (struct lbs_private*,int ,int *,scalar_t__) ;int command_timer; int driver_lock; scalar_t__ cur_cmd_retcode; struct cmd_ctrl_node* cur_cmd; } ;
struct cmd_header {int seqnum; int command; int size; } ;
struct cmd_ctrl_node {struct cmd_header* cmdbuf; } ;


 scalar_t__ CMD_802_11_ASSOCIATE ;
 scalar_t__ CMD_802_11_SCAN ;
 int HZ ;
 int LBS_DEB_CMD ;
 int LBS_DEB_HOST ;
 int MVMS_CMD ;
 scalar_t__ jiffies ;
 int lbs_deb_cmd (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_hex (int ,char*,void*,scalar_t__) ;
 int lbs_deb_leave (int ) ;
 int lbs_pr_info (char*,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct lbs_private*,int ,int *,scalar_t__) ;

__attribute__((used)) static void lbs_submit_command(struct lbs_private *priv,
          struct cmd_ctrl_node *cmdnode)
{
 unsigned long flags;
 struct cmd_header *cmd;
 uint16_t cmdsize;
 uint16_t command;
 int timeo = 3 * HZ;
 int ret;

 lbs_deb_enter(LBS_DEB_HOST);

 cmd = cmdnode->cmdbuf;

 spin_lock_irqsave(&priv->driver_lock, flags);
 priv->cur_cmd = cmdnode;
 priv->cur_cmd_retcode = 0;
 spin_unlock_irqrestore(&priv->driver_lock, flags);

 cmdsize = le16_to_cpu(cmd->size);
 command = le16_to_cpu(cmd->command);


 if (command == CMD_802_11_SCAN || command == CMD_802_11_ASSOCIATE)
  timeo = 5 * HZ;

 lbs_deb_cmd("DNLD_CMD: command 0x%04x, seq %d, size %d\n",
       command, le16_to_cpu(cmd->seqnum), cmdsize);
 lbs_deb_hex(LBS_DEB_CMD, "DNLD_CMD", (void *) cmdnode->cmdbuf, cmdsize);

 ret = priv->hw_host_to_card(priv, MVMS_CMD, (u8 *) cmd, cmdsize);

 if (ret) {
  lbs_pr_info("DNLD_CMD: hw_host_to_card failed: %d\n", ret);


  timeo = HZ/4;
 }


 mod_timer(&priv->command_timer, jiffies + timeo);

 lbs_deb_leave(LBS_DEB_HOST);
}
