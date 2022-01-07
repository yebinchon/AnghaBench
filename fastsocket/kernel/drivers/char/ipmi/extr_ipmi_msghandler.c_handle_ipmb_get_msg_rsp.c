
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_smi_msg {int rsp_size; int* rsp; } ;
struct TYPE_2__ {int netfn; int data_len; int data; } ;
struct ipmi_recv_msg {int recv_type; TYPE_1__ msg; int msg_data; } ;
struct ipmi_ipmb_addr {int slave_addr; int channel; int lun; int addr_type; } ;
struct ipmi_addr {int dummy; } ;
typedef int ipmi_smi_t ;


 int IPMI_IPMB_ADDR_TYPE ;
 int IPMI_RESPONSE_RECV_TYPE ;
 int deliver_response (struct ipmi_recv_msg*) ;
 int handled_ipmb_responses ;
 scalar_t__ intf_find_seq (int ,int,int,int,int,struct ipmi_addr*,struct ipmi_recv_msg**) ;
 int invalid_ipmb_responses ;
 int ipmi_inc_stat (int ,int ) ;
 int memcpy (int ,int*,int) ;
 int unhandled_ipmb_responses ;

__attribute__((used)) static int handle_ipmb_get_msg_rsp(ipmi_smi_t intf,
       struct ipmi_smi_msg *msg)
{
 struct ipmi_ipmb_addr ipmb_addr;
 struct ipmi_recv_msg *recv_msg;





 if (msg->rsp_size < 11) {

  ipmi_inc_stat(intf, invalid_ipmb_responses);
  return 0;
 }

 if (msg->rsp[2] != 0) {

  return 0;
 }

 ipmb_addr.addr_type = IPMI_IPMB_ADDR_TYPE;
 ipmb_addr.slave_addr = msg->rsp[6];
 ipmb_addr.channel = msg->rsp[3] & 0x0f;
 ipmb_addr.lun = msg->rsp[7] & 3;





 if (intf_find_seq(intf,
     msg->rsp[7] >> 2,
     msg->rsp[3] & 0x0f,
     msg->rsp[8],
     (msg->rsp[4] >> 2) & (~1),
     (struct ipmi_addr *) &(ipmb_addr),
     &recv_msg)) {




  ipmi_inc_stat(intf, unhandled_ipmb_responses);
  return 0;
 }

 memcpy(recv_msg->msg_data,
        &(msg->rsp[9]),
        msg->rsp_size - 9);





 recv_msg->msg.netfn = msg->rsp[4] >> 2;
 recv_msg->msg.data = recv_msg->msg_data;
 recv_msg->msg.data_len = msg->rsp_size - 10;
 recv_msg->recv_type = IPMI_RESPONSE_RECV_TYPE;
 ipmi_inc_stat(intf, handled_ipmb_responses);
 deliver_response(recv_msg);

 return 0;
}
