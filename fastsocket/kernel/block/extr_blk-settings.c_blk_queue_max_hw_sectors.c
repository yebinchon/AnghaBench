
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int limits; } ;


 int blk_limits_max_hw_sectors (int *,unsigned int) ;

void blk_queue_max_hw_sectors(struct request_queue *q, unsigned int max_hw_sectors)
{
 blk_limits_max_hw_sectors(&q->limits, max_hw_sectors);
}
