
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_table {int recv_msg; int inuse; } ;
typedef TYPE_1__* ipmi_smi_t ;
struct TYPE_3__ {struct seq_table* seq_table; } ;


 int IPMI_ERR_UNSPECIFIED ;
 int IPMI_IPMB_NUM_SEQ ;
 int deliver_err_response (int ,int ) ;

__attribute__((used)) static void cleanup_smi_msgs(ipmi_smi_t intf)
{
 int i;
 struct seq_table *ent;


 for (i = 0; i < IPMI_IPMB_NUM_SEQ; i++) {
  ent = &(intf->seq_table[i]);
  if (!ent->inuse)
   continue;
  deliver_err_response(ent->recv_msg, IPMI_ERR_UNSPECIFIED);
 }
}
