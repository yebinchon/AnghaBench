
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ipmi_smi_msg {int data_size; int* data; int rsp_size; int* rsp; int link; int msgid; int * user_data; } ;
typedef TYPE_2__* ipmi_smi_t ;
struct TYPE_8__ {int run_to_completion; int recv_tasklet; int waiting_msgs_lock; int waiting_msgs; TYPE_1__* channels; } ;
struct TYPE_7__ {scalar_t__ medium; } ;


 int IPMI_BUS_ERR ;
 scalar_t__ IPMI_CHANNEL_MEDIUM_8023LAN ;
 scalar_t__ IPMI_CHANNEL_MEDIUM_ASYNC ;
 int IPMI_LOST_ARBITRATION_ERR ;
 int IPMI_MAX_CHANNELS ;
 int IPMI_NAK_ON_WRITE_ERR ;
 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_NODE_BUSY_ERR ;
 int IPMI_SEND_MSG_CMD ;
 int intf_err_seq (TYPE_2__*,int ,int) ;
 int intf_start_seq_timer (TYPE_2__*,int ) ;
 int ipmi_free_smi_msg (struct ipmi_smi_msg*) ;
 int ipmi_inc_stat (TYPE_2__*,int ) ;
 int list_add_tail (int *,int *) ;
 int sent_ipmb_command_errs ;
 int sent_lan_command_errs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

void ipmi_smi_msg_received(ipmi_smi_t intf,
      struct ipmi_smi_msg *msg)
{
 unsigned long flags = 0;
 int run_to_completion;


 if ((msg->data_size >= 2)
     && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
     && (msg->data[1] == IPMI_SEND_MSG_CMD)
     && (msg->user_data == ((void*)0))) {
  if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
      && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
      && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
      && (msg->rsp[2] != IPMI_BUS_ERR)
      && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
   int chan = msg->rsp[3] & 0xf;


   if (chan >= IPMI_MAX_CHANNELS)
    ;
   else if ((intf->channels[chan].medium
      == IPMI_CHANNEL_MEDIUM_8023LAN)
     || (intf->channels[chan].medium
         == IPMI_CHANNEL_MEDIUM_ASYNC))
    ipmi_inc_stat(intf, sent_lan_command_errs);
   else
    ipmi_inc_stat(intf, sent_ipmb_command_errs);
   intf_err_seq(intf, msg->msgid, msg->rsp[2]);
  } else

   intf_start_seq_timer(intf, msg->msgid);

  ipmi_free_smi_msg(msg);
  goto out;
 }





 run_to_completion = intf->run_to_completion;
 if (!run_to_completion)
  spin_lock_irqsave(&intf->waiting_msgs_lock, flags);
 list_add_tail(&msg->link, &intf->waiting_msgs);
 if (!run_to_completion)
  spin_unlock_irqrestore(&intf->waiting_msgs_lock, flags);

 tasklet_schedule(&intf->recv_tasklet);
 out:
 return;
}
