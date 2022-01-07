
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int cmdfreeq; } ;
struct cmd_ctrl_node {int list; int cmdbuf; scalar_t__ callback_arg; int * callback; } ;


 int LBS_CMD_BUFFER_SIZE ;
 int LBTF_DEB_HOST ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int list_add_tail (int *,int *) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void __lbtf_cleanup_and_insert_cmd(struct lbtf_private *priv,
      struct cmd_ctrl_node *cmdnode)
{
 lbtf_deb_enter(LBTF_DEB_HOST);

 if (!cmdnode)
  goto cl_ins_out;

 cmdnode->callback = ((void*)0);
 cmdnode->callback_arg = 0;

 memset(cmdnode->cmdbuf, 0, LBS_CMD_BUFFER_SIZE);

 list_add_tail(&cmdnode->list, &priv->cmdfreeq);

cl_ins_out:
 lbtf_deb_leave(LBTF_DEB_HOST);
}
