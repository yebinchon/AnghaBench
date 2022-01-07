
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short logical_block_size; unsigned short physical_block_size; unsigned short io_min; } ;
struct request_queue {TYPE_1__ limits; } ;



void blk_queue_logical_block_size(struct request_queue *q, unsigned short size)
{
 q->limits.logical_block_size = size;

 if (q->limits.physical_block_size < size)
  q->limits.physical_block_size = size;

 if (q->limits.io_min < q->limits.physical_block_size)
  q->limits.io_min = q->limits.physical_block_size;
}
