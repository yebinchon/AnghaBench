
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int limits; } ;


 int blk_limits_io_opt (int *,unsigned int) ;

void blk_queue_io_opt(struct request_queue *q, unsigned int opt)
{
 blk_limits_io_opt(&q->limits, opt);
}
