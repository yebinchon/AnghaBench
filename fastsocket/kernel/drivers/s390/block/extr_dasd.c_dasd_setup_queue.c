
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_block {int s2b_shift; int request_queue; int bp_block; TYPE_2__* base; } ;
struct TYPE_4__ {int features; TYPE_1__* discipline; } ;
struct TYPE_3__ {int max_blocks; } ;


 int DASD_FEATURE_USERAW ;
 scalar_t__ PAGE_SIZE ;
 int blk_queue_logical_block_size (int ,int ) ;
 int blk_queue_max_hw_sectors (int ,int) ;
 int blk_queue_max_segment_size (int ,scalar_t__) ;
 int blk_queue_max_segments (int ,long) ;
 int blk_queue_segment_boundary (int ,scalar_t__) ;

__attribute__((used)) static void dasd_setup_queue(struct dasd_block *block)
{
 int max;

 if (block->base->features & DASD_FEATURE_USERAW) {







  max = 2048;
 } else {
  max = block->base->discipline->max_blocks << block->s2b_shift;
 }
 blk_queue_logical_block_size(block->request_queue,
         block->bp_block);
 blk_queue_max_hw_sectors(block->request_queue, max);
 blk_queue_max_segments(block->request_queue, -1L);



 blk_queue_max_segment_size(block->request_queue, PAGE_SIZE);
 blk_queue_segment_boundary(block->request_queue, PAGE_SIZE - 1);
}
