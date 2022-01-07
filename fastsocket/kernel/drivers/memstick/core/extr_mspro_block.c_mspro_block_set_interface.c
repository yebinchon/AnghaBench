
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mspro_param_register {unsigned char system; int tpc_param; int data_address; int data_count; } ;
struct mspro_block_data {int mrq_handler; } ;
struct memstick_host {int dummy; } ;
struct TYPE_2__ {int error; } ;
struct memstick_dev {TYPE_1__ current_mrq; int mrq_complete; int next_request; struct memstick_host* host; } ;
typedef int param ;


 int MS_TPC_WRITE_REG ;
 int h_mspro_block_default ;
 int h_mspro_block_req_init ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int memstick_init_req (TYPE_1__*,int ,struct mspro_param_register*,int) ;
 int memstick_new_req (struct memstick_host*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mspro_block_set_interface(struct memstick_dev *card,
         unsigned char sys_reg)
{
 struct memstick_host *host = card->host;
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 struct mspro_param_register param = {
  .system = sys_reg,
  .data_count = 0,
  .data_address = 0,
  .tpc_param = 0
 };

 card->next_request = h_mspro_block_req_init;
 msb->mrq_handler = h_mspro_block_default;
 memstick_init_req(&card->current_mrq, MS_TPC_WRITE_REG, &param,
     sizeof(param));
 memstick_new_req(host);
 wait_for_completion(&card->mrq_complete);
 return card->current_mrq.error;
}
