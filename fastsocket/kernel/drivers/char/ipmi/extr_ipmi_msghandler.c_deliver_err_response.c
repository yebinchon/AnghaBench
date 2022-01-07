
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int netfn; int data_len; int* data; } ;
struct ipmi_recv_msg {int* msg_data; TYPE_1__ msg; int recv_type; } ;


 int IPMI_RESPONSE_RECV_TYPE ;
 int deliver_response (struct ipmi_recv_msg*) ;

__attribute__((used)) static void
deliver_err_response(struct ipmi_recv_msg *msg, int err)
{
 msg->recv_type = IPMI_RESPONSE_RECV_TYPE;
 msg->msg_data[0] = err;
 msg->msg.netfn |= 1;
 msg->msg.data_len = 1;
 msg->msg.data = msg->msg_data;
 deliver_response(msg);
}
