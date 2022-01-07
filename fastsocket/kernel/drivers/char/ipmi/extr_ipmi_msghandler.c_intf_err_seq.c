
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_table {unsigned long seqid; struct ipmi_recv_msg* recv_msg; scalar_t__ inuse; } ;
struct ipmi_recv_msg {int dummy; } ;
typedef TYPE_1__* ipmi_smi_t ;
struct TYPE_3__ {int seq_lock; struct seq_table* seq_table; } ;


 int ENODEV ;
 int GET_SEQ_FROM_MSGID (long,unsigned char,unsigned long) ;
 int deliver_err_response (struct ipmi_recv_msg*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int intf_err_seq(ipmi_smi_t intf,
   long msgid,
   unsigned int err)
{
 int rv = -ENODEV;
 unsigned long flags;
 unsigned char seq;
 unsigned long seqid;
 struct ipmi_recv_msg *msg = ((void*)0);


 GET_SEQ_FROM_MSGID(msgid, seq, seqid);

 spin_lock_irqsave(&(intf->seq_lock), flags);




 if ((intf->seq_table[seq].inuse)
    && (intf->seq_table[seq].seqid == seqid)) {
  struct seq_table *ent = &(intf->seq_table[seq]);

  ent->inuse = 0;
  msg = ent->recv_msg;
  rv = 0;
 }
 spin_unlock_irqrestore(&(intf->seq_lock), flags);

 if (msg)
  deliver_err_response(msg, err);

 return rv;
}
