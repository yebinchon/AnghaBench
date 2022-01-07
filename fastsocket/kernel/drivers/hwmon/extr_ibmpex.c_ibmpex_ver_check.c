
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_len; } ;
struct ibmpex_bmc_data {int rx_msg_len; int interface; int * rx_msg_data; int sensor_minor; int sensor_major; int bmc_device; scalar_t__ rx_result; int read_complete; TYPE_1__ tx_message; int * tx_msg_data; } ;


 int ENOENT ;
 int PEX_GET_VERSION ;
 int dev_info (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int extract_value (int *,int) ;
 int ibmpex_send_message (struct ibmpex_bmc_data*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ibmpex_ver_check(struct ibmpex_bmc_data *data)
{
 data->tx_msg_data[0] = PEX_GET_VERSION;
 data->tx_message.data_len = 1;
 ibmpex_send_message(data);

 wait_for_completion(&data->read_complete);

 if (data->rx_result || data->rx_msg_len != 6)
  return -ENOENT;

 data->sensor_major = data->rx_msg_data[0];
 data->sensor_minor = data->rx_msg_data[1];

 dev_info(data->bmc_device, "Found BMC with sensor interface "
   "v%d.%d %d-%02d-%02d on interface %d\n",
   data->sensor_major,
   data->sensor_minor,
   extract_value(data->rx_msg_data, 2),
   data->rx_msg_data[4],
   data->rx_msg_data[5],
   data->interface);

 return 0;
}
