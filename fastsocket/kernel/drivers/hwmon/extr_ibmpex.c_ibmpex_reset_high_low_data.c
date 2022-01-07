
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_len; } ;
struct ibmpex_bmc_data {int read_complete; TYPE_1__ tx_message; int * tx_msg_data; } ;


 int PEX_RESET_HIGH_LOW ;
 int ibmpex_send_message (struct ibmpex_bmc_data*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ibmpex_reset_high_low_data(struct ibmpex_bmc_data *data)
{
 data->tx_msg_data[0] = PEX_RESET_HIGH_LOW;
 data->tx_message.data_len = 1;
 ibmpex_send_message(data);

 wait_for_completion(&data->read_complete);

 return 0;
}
