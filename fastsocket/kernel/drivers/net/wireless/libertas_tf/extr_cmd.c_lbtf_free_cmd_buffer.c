
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {struct cmd_ctrl_node* cmd_array; } ;
struct cmd_ctrl_node {struct cmd_ctrl_node* cmdbuf; } ;


 unsigned int LBS_NUM_CMD_BUFFERS ;
 int LBTF_DEB_HOST ;
 int kfree (struct cmd_ctrl_node*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_host (char*) ;
 int lbtf_deb_leave (int ) ;

int lbtf_free_cmd_buffer(struct lbtf_private *priv)
{
 struct cmd_ctrl_node *cmdarray;
 unsigned int i;

 lbtf_deb_enter(LBTF_DEB_HOST);


 if (priv->cmd_array == ((void*)0)) {
  lbtf_deb_host("FREE_CMD_BUF: cmd_array is NULL\n");
  goto done;
 }

 cmdarray = priv->cmd_array;


 for (i = 0; i < LBS_NUM_CMD_BUFFERS; i++) {
  kfree(cmdarray[i].cmdbuf);
  cmdarray[i].cmdbuf = ((void*)0);
 }


 kfree(priv->cmd_array);
 priv->cmd_array = ((void*)0);

done:
 lbtf_deb_leave(LBTF_DEB_HOST);
 return 0;
}
