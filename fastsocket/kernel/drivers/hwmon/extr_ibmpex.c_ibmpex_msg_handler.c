
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_len; int * data; } ;
struct ipmi_recv_msg {scalar_t__ msgid; TYPE_1__ msg; int recv_type; } ;
struct ibmpex_bmc_data {scalar_t__ tx_msgid; int rx_msg_len; int read_complete; int rx_msg_data; int rx_result; int rx_recv_type; int bmc_device; } ;


 int IPMI_UNKNOWN_ERR_COMPLETION_CODE ;
 int complete (int *) ;
 int dev_err (int ,char*,int,int) ;
 int ipmi_free_recv_msg (struct ipmi_recv_msg*) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void ibmpex_msg_handler(struct ipmi_recv_msg *msg, void *user_msg_data)
{
 struct ibmpex_bmc_data *data = (struct ibmpex_bmc_data *)user_msg_data;

 if (msg->msgid != data->tx_msgid) {
  dev_err(data->bmc_device, "Mismatch between received msgid "
   "(%02x) and transmitted msgid (%02x)!\n",
   (int)msg->msgid,
   (int)data->tx_msgid);
  ipmi_free_recv_msg(msg);
  return;
 }

 data->rx_recv_type = msg->recv_type;
 if (msg->msg.data_len > 0)
  data->rx_result = msg->msg.data[0];
 else
  data->rx_result = IPMI_UNKNOWN_ERR_COMPLETION_CODE;

 if (msg->msg.data_len > 1) {
  data->rx_msg_len = msg->msg.data_len - 1;
  memcpy(data->rx_msg_data, msg->msg.data + 1, data->rx_msg_len);
 } else
  data->rx_msg_len = 0;

 ipmi_free_recv_msg(msg);
 complete(&data->read_complete);
}
