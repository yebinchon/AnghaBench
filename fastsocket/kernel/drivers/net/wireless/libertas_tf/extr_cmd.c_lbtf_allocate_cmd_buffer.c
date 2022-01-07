
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lbtf_private {struct cmd_ctrl_node* cmd_array; } ;
struct cmd_ctrl_node {int cmdwait_q; void* cmdbuf; } ;


 int GFP_KERNEL ;
 int LBS_CMD_BUFFER_SIZE ;
 int LBS_NUM_CMD_BUFFERS ;
 int LBTF_DEB_HOST ;
 int init_waitqueue_head (int *) ;
 void* kzalloc (int,int ) ;
 int lbtf_cleanup_and_insert_cmd (struct lbtf_private*,struct cmd_ctrl_node*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_host (char*) ;
 int lbtf_deb_leave_args (int ,char*,int) ;

int lbtf_allocate_cmd_buffer(struct lbtf_private *priv)
{
 int ret = 0;
 u32 bufsize;
 u32 i;
 struct cmd_ctrl_node *cmdarray;

 lbtf_deb_enter(LBTF_DEB_HOST);


 bufsize = sizeof(struct cmd_ctrl_node) * LBS_NUM_CMD_BUFFERS;
 cmdarray = kzalloc(bufsize, GFP_KERNEL);
 if (!cmdarray) {
  lbtf_deb_host("ALLOC_CMD_BUF: tempcmd_array is NULL\n");
  ret = -1;
  goto done;
 }
 priv->cmd_array = cmdarray;


 for (i = 0; i < LBS_NUM_CMD_BUFFERS; i++) {
  cmdarray[i].cmdbuf = kzalloc(LBS_CMD_BUFFER_SIZE, GFP_KERNEL);
  if (!cmdarray[i].cmdbuf) {
   lbtf_deb_host("ALLOC_CMD_BUF: ptempvirtualaddr is NULL\n");
   ret = -1;
   goto done;
  }
 }

 for (i = 0; i < LBS_NUM_CMD_BUFFERS; i++) {
  init_waitqueue_head(&cmdarray[i].cmdwait_q);
  lbtf_cleanup_and_insert_cmd(priv, &cmdarray[i]);
 }

 ret = 0;

done:
 lbtf_deb_leave_args(LBTF_DEB_HOST, "ret %d", ret);
 return ret;
}
