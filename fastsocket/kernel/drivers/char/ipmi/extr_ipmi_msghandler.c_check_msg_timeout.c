
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct seq_table {scalar_t__ timeout; scalar_t__ retries_left; struct ipmi_recv_msg* recv_msg; int seqid; scalar_t__ broadcast; scalar_t__ inuse; } ;
struct list_head {int dummy; } ;
struct ipmi_smi_msg {int dummy; } ;
struct ipmi_smi_handlers {int (* sender ) (int ,struct ipmi_smi_msg*,int ) ;} ;
struct ipmi_recv_msg {int addr; int link; } ;
typedef TYPE_1__* ipmi_smi_t ;
struct TYPE_5__ {int intf_num; int seq_lock; int send_info; struct ipmi_smi_handlers* handlers; } ;


 scalar_t__ MAX_MSG_TIMEOUT ;
 int dropped_rexmit_ipmb_commands ;
 int dropped_rexmit_lan_commands ;
 int ipmi_free_smi_msg (struct ipmi_smi_msg*) ;
 int ipmi_inc_stat (TYPE_1__*,int ) ;
 scalar_t__ is_lan_addr (int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int retransmitted_ipmb_commands ;
 int retransmitted_lan_commands ;
 struct ipmi_smi_msg* smi_from_recv_msg (TYPE_1__*,struct ipmi_recv_msg*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct ipmi_smi_msg*,int ) ;
 int timed_out_ipmb_broadcasts ;
 int timed_out_ipmb_commands ;
 int timed_out_lan_commands ;

__attribute__((used)) static void check_msg_timeout(ipmi_smi_t intf, struct seq_table *ent,
         struct list_head *timeouts, long timeout_period,
         int slot, unsigned long *flags)
{
 struct ipmi_recv_msg *msg;
 struct ipmi_smi_handlers *handlers;

 if (intf->intf_num == -1)
  return;

 if (!ent->inuse)
  return;

 ent->timeout -= timeout_period;
 if (ent->timeout > 0)
  return;

 if (ent->retries_left == 0) {

  ent->inuse = 0;
  msg = ent->recv_msg;
  list_add_tail(&msg->link, timeouts);
  if (ent->broadcast)
   ipmi_inc_stat(intf, timed_out_ipmb_broadcasts);
  else if (is_lan_addr(&ent->recv_msg->addr))
   ipmi_inc_stat(intf, timed_out_lan_commands);
  else
   ipmi_inc_stat(intf, timed_out_ipmb_commands);
 } else {
  struct ipmi_smi_msg *smi_msg;






  ent->timeout = MAX_MSG_TIMEOUT;
  ent->retries_left--;
  smi_msg = smi_from_recv_msg(intf, ent->recv_msg, slot,
         ent->seqid);
  if (!smi_msg) {
   if (is_lan_addr(&ent->recv_msg->addr))
    ipmi_inc_stat(intf,
           dropped_rexmit_lan_commands);
   else
    ipmi_inc_stat(intf,
           dropped_rexmit_ipmb_commands);
   return;
  }

  spin_unlock_irqrestore(&intf->seq_lock, *flags);
  handlers = intf->handlers;
  if (handlers) {
   if (is_lan_addr(&ent->recv_msg->addr))
    ipmi_inc_stat(intf,
           retransmitted_lan_commands);
   else
    ipmi_inc_stat(intf,
           retransmitted_ipmb_commands);

   intf->handlers->sender(intf->send_info,
            smi_msg, 0);
  } else
   ipmi_free_smi_msg(smi_msg);

  spin_lock_irqsave(&intf->seq_lock, *flags);
 }
}
