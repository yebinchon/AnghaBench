
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int (* lld_busy_fn ) (struct request_queue*) ;} ;


 int stub1 (struct request_queue*) ;

int blk_lld_busy(struct request_queue *q)
{
 if (q->lld_busy_fn)
  return q->lld_busy_fn(q);

 return 0;
}
