
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u8 ;
struct lbtf_private {int (* hw_host_to_card ) (struct lbtf_private*,int ,int *,int ) ;int command_timer; int driver_lock; struct cmd_ctrl_node* cur_cmd; } ;
struct cmd_header {int seqnum; int command; int size; } ;
struct cmd_ctrl_node {struct cmd_header* cmdbuf; } ;


 int HZ ;
 int LBTF_DEB_CMD ;
 int LBTF_DEB_HOST ;
 int MVMS_CMD ;
 scalar_t__ jiffies ;
 int lbtf_deb_cmd (char*,int ,int ,int ) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_hex (int ,char*,void*,int ) ;
 int lbtf_deb_leave (int ) ;
 int le16_to_cpu (int ) ;
 int mod_timer (int *,scalar_t__) ;
 int pr_info (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct lbtf_private*,int ,int *,int ) ;

__attribute__((used)) static void lbtf_submit_command(struct lbtf_private *priv,
          struct cmd_ctrl_node *cmdnode)
{
 unsigned long flags;
 struct cmd_header *cmd;
 uint16_t cmdsize;
 uint16_t command;
 int timeo = 5 * HZ;
 int ret;

 lbtf_deb_enter(LBTF_DEB_HOST);

 cmd = cmdnode->cmdbuf;

 spin_lock_irqsave(&priv->driver_lock, flags);
 priv->cur_cmd = cmdnode;
 cmdsize = le16_to_cpu(cmd->size);
 command = le16_to_cpu(cmd->command);

 lbtf_deb_cmd("DNLD_CMD: command 0x%04x, seq %d, size %d\n",
       command, le16_to_cpu(cmd->seqnum), cmdsize);
 lbtf_deb_hex(LBTF_DEB_CMD, "DNLD_CMD", (void *) cmdnode->cmdbuf, cmdsize);

 ret = priv->hw_host_to_card(priv, MVMS_CMD, (u8 *) cmd, cmdsize);
 spin_unlock_irqrestore(&priv->driver_lock, flags);

 if (ret) {
  pr_info("DNLD_CMD: hw_host_to_card failed: %d\n", ret);


  timeo = HZ;
 }


 mod_timer(&priv->command_timer, jiffies + timeo);

 lbtf_deb_leave(LBTF_DEB_HOST);
}
