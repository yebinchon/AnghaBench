
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mspro_block_data {int mrq_handler; } ;
struct memstick_request {int dummy; } ;
struct memstick_dev {int next_request; struct memstick_request current_mrq; } ;


 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;

__attribute__((used)) static int h_mspro_block_req_init(struct memstick_dev *card,
      struct memstick_request **mrq)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);

 *mrq = &card->current_mrq;
 card->next_request = msb->mrq_handler;
 return 0;
}
