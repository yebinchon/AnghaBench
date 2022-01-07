
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {struct cmd_ctrl_node* cmd_array; } ;
struct cmd_ctrl_node {struct cmd_ctrl_node* cmdbuf; } ;


 int LBS_DEB_HOST ;
 unsigned int LBS_NUM_CMD_BUFFERS ;
 int kfree (struct cmd_ctrl_node*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_host (char*) ;
 int lbs_deb_leave (int ) ;

int lbs_free_cmd_buffer(struct lbs_private *priv)
{
 struct cmd_ctrl_node *cmdarray;
 unsigned int i;

 lbs_deb_enter(LBS_DEB_HOST);


 if (priv->cmd_array == ((void*)0)) {
  lbs_deb_host("FREE_CMD_BUF: cmd_array is NULL\n");
  goto done;
 }

 cmdarray = priv->cmd_array;


 for (i = 0; i < LBS_NUM_CMD_BUFFERS; i++) {
  if (cmdarray[i].cmdbuf) {
   kfree(cmdarray[i].cmdbuf);
   cmdarray[i].cmdbuf = ((void*)0);
  }
 }


 if (priv->cmd_array) {
  kfree(priv->cmd_array);
  priv->cmd_array = ((void*)0);
 }

done:
 lbs_deb_leave(LBS_DEB_HOST);
 return 0;
}
