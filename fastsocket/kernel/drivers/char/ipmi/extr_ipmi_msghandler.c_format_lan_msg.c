
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_ipmi_msg {int netfn; unsigned char cmd; scalar_t__ data_len; int data; } ;
struct ipmi_smi_msg {int* data; scalar_t__ data_size; long msgid; } ;
struct ipmi_lan_addr {int channel; int session_handle; int remote_SWID; int lun; int local_SWID; } ;


 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_SEND_MSG_CMD ;
 void* ipmb_checksum (int*,int) ;
 int memcpy (unsigned char*,int ,scalar_t__) ;

__attribute__((used)) static inline void format_lan_msg(struct ipmi_smi_msg *smi_msg,
      struct kernel_ipmi_msg *msg,
      struct ipmi_lan_addr *lan_addr,
      long msgid,
      unsigned char ipmb_seq,
      unsigned char source_lun)
{

 smi_msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
 smi_msg->data[1] = IPMI_SEND_MSG_CMD;
 smi_msg->data[2] = lan_addr->channel;
 smi_msg->data[3] = lan_addr->session_handle;
 smi_msg->data[4] = lan_addr->remote_SWID;
 smi_msg->data[5] = (msg->netfn << 2) | (lan_addr->lun & 0x3);
 smi_msg->data[6] = ipmb_checksum(&(smi_msg->data[4]), 2);
 smi_msg->data[7] = lan_addr->local_SWID;
 smi_msg->data[8] = (ipmb_seq << 2) | source_lun;
 smi_msg->data[9] = msg->cmd;


 if (msg->data_len > 0)
  memcpy(&(smi_msg->data[10]), msg->data,
         msg->data_len);
 smi_msg->data_size = msg->data_len + 10;


 smi_msg->data[smi_msg->data_size]
  = ipmb_checksum(&(smi_msg->data[7]),
    smi_msg->data_size-7);





 smi_msg->data_size += 1;

 smi_msg->msgid = msgid;
}
