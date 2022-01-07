
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_table {unsigned long seqid; int orig_timeout; int timeout; scalar_t__ inuse; } ;
typedef TYPE_1__* ipmi_smi_t ;
struct TYPE_3__ {int seq_lock; struct seq_table* seq_table; } ;


 int ENODEV ;
 int GET_SEQ_FROM_MSGID (long,unsigned char,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int intf_start_seq_timer(ipmi_smi_t intf,
    long msgid)
{
 int rv = -ENODEV;
 unsigned long flags;
 unsigned char seq;
 unsigned long seqid;


 GET_SEQ_FROM_MSGID(msgid, seq, seqid);

 spin_lock_irqsave(&(intf->seq_lock), flags);




 if ((intf->seq_table[seq].inuse)
    && (intf->seq_table[seq].seqid == seqid)) {
  struct seq_table *ent = &(intf->seq_table[seq]);
  ent->timeout = ent->orig_timeout;
  rv = 0;
 }
 spin_unlock_irqrestore(&(intf->seq_lock), flags);

 return rv;
}
