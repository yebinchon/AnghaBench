
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int blk_run_queue_async (struct request_queue*) ;

void bsg_goose_queue(struct request_queue *q)
{
 if (!q)
  return;

 blk_run_queue_async(q);
}
