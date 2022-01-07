
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_queue {TYPE_1__* sg; int bounce_buf; int bounce_sg_len; int bounce_sg; int req; } ;
struct TYPE_2__ {int length; } ;


 scalar_t__ READ ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ rq_data_dir (int ) ;
 int sg_copy_from_buffer (int ,int ,int ,int ) ;

void mmc_queue_bounce_post(struct mmc_queue *mq)
{
 unsigned long flags;

 if (!mq->bounce_buf)
  return;

 if (rq_data_dir(mq->req) != READ)
  return;

 local_irq_save(flags);
 sg_copy_from_buffer(mq->bounce_sg, mq->bounce_sg_len,
  mq->bounce_buf, mq->sg[0].length);
 local_irq_restore(flags);
}
