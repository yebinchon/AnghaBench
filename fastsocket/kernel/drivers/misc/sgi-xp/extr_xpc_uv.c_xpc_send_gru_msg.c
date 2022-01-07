
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_message_queue_desc {int dummy; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int MQE_CONGESTION ;
 int MQE_OK ;
 int MQE_QUEUE_FULL ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int gru_send_message_gpa (struct gru_message_queue_desc*,void*,size_t) ;
 int msleep_interruptible (int) ;
 int xpGruSendMqError ;
 int xpSuccess ;
 int xpc_chan ;

__attribute__((used)) static enum xp_retval
xpc_send_gru_msg(struct gru_message_queue_desc *gru_mq_desc, void *msg,
   size_t msg_size)
{
 enum xp_retval xp_ret;
 int ret;

 while (1) {
  ret = gru_send_message_gpa(gru_mq_desc, msg, msg_size);
  if (ret == MQE_OK) {
   xp_ret = xpSuccess;
   break;
  }

  if (ret == MQE_QUEUE_FULL) {
   dev_dbg(xpc_chan, "gru_send_message_gpa() returned "
    "error=MQE_QUEUE_FULL\n");


   (void)msleep_interruptible(10);
  } else if (ret == MQE_CONGESTION) {
   dev_dbg(xpc_chan, "gru_send_message_gpa() returned "
    "error=MQE_CONGESTION\n");


  } else {

   dev_err(xpc_chan, "gru_send_message_gpa() returned "
    "error=%d\n", ret);
   xp_ret = xpGruSendMqError;
   break;
  }
 }
 return xp_ret;
}
