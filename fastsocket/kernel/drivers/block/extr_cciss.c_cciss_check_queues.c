
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int next_to_run; scalar_t__ nr_cmds; int highest_lun; int cmd_pool_bits; TYPE_2__** gendisk; TYPE_1__** drv; } ;
typedef TYPE_3__ ctlr_info_t ;
struct TYPE_6__ {int queue; } ;
struct TYPE_5__ {int heads; int queue; } ;


 int blk_start_queue (int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

__attribute__((used)) static void cciss_check_queues(ctlr_info_t *h)
{
 int start_queue = h->next_to_run;
 int i;






 if ((find_first_zero_bit(h->cmd_pool_bits, h->nr_cmds)) == h->nr_cmds)
  return;





 for (i = 0; i < h->highest_lun + 1; i++) {
  int curr_queue = (start_queue + i) % (h->highest_lun + 1);



  if (!h->drv[curr_queue])
   continue;
  if (!(h->drv[curr_queue]->queue) ||
   !(h->drv[curr_queue]->heads))
   continue;
  blk_start_queue(h->gendisk[curr_queue]->queue);




  if ((find_first_zero_bit(h->cmd_pool_bits, h->nr_cmds)) == h->nr_cmds) {
   if (curr_queue == start_queue) {
    h->next_to_run =
        (start_queue + 1) % (h->highest_lun + 1);
    break;
   } else {
    h->next_to_run = curr_queue;
    break;
   }
  }
 }
}
