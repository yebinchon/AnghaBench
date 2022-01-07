
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; } ;
struct memstick_dev {TYPE_1__ current_mrq; int mrq_complete; int host; int next_request; } ;


 int h_memstick_set_rw_addr ;
 int memstick_new_req (int ) ;
 int wait_for_completion (int *) ;

int memstick_set_rw_addr(struct memstick_dev *card)
{
 card->next_request = h_memstick_set_rw_addr;
 memstick_new_req(card->host);
 wait_for_completion(&card->mrq_complete);

 return card->current_mrq.error;
}
