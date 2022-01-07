
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_smi_msg {int data_size; int * data; int msgid; } ;
struct TYPE_2__ {int data_len; int data; } ;
struct ipmi_recv_msg {TYPE_1__ msg; } ;
typedef int ipmi_smi_t ;


 int STORE_SEQ_IN_MSGID (unsigned char,long) ;
 struct ipmi_smi_msg* ipmi_alloc_smi_msg () ;
 int memcpy (int *,int ,int) ;
 int printk (char*,...) ;

__attribute__((used)) static struct ipmi_smi_msg *
smi_from_recv_msg(ipmi_smi_t intf, struct ipmi_recv_msg *recv_msg,
    unsigned char seq, long seqid)
{
 struct ipmi_smi_msg *smi_msg = ipmi_alloc_smi_msg();
 if (!smi_msg)




  return ((void*)0);

 memcpy(smi_msg->data, recv_msg->msg.data, recv_msg->msg.data_len);
 smi_msg->data_size = recv_msg->msg.data_len;
 smi_msg->msgid = STORE_SEQ_IN_MSGID(seq, seqid);
 return smi_msg;
}
