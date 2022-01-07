
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct request_queue {int dummy; } ;
struct gendisk {struct request_queue* queue; } ;


 int BLKIF_MAX_SEGMENTS_PER_REQUEST ;
 int BLK_BOUNCE_ANY ;
 scalar_t__ PAGE_SIZE ;
 int QUEUE_FLAG_VIRT ;
 struct request_queue* blk_init_queue (int ,int *) ;
 int blk_queue_bounce_limit (struct request_queue*,int ) ;
 int blk_queue_dma_alignment (struct request_queue*,int) ;
 int blk_queue_logical_block_size (struct request_queue*,int ) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int) ;
 int blk_queue_max_segment_size (struct request_queue*,scalar_t__) ;
 int blk_queue_max_segments (struct request_queue*,int ) ;
 int blk_queue_segment_boundary (struct request_queue*,scalar_t__) ;
 int blkif_io_lock ;
 int do_blkif_request ;
 int queue_flag_set_unlocked (int ,struct request_queue*) ;

__attribute__((used)) static int xlvbd_init_blk_queue(struct gendisk *gd, u16 sector_size)
{
 struct request_queue *rq;

 rq = blk_init_queue(do_blkif_request, &blkif_io_lock);
 if (rq == ((void*)0))
  return -1;

 queue_flag_set_unlocked(QUEUE_FLAG_VIRT, rq);


 blk_queue_logical_block_size(rq, sector_size);
 blk_queue_max_hw_sectors(rq, 512);


 blk_queue_segment_boundary(rq, PAGE_SIZE - 1);
 blk_queue_max_segment_size(rq, PAGE_SIZE);


 blk_queue_max_segments(rq, BLKIF_MAX_SEGMENTS_PER_REQUEST);


 blk_queue_dma_alignment(rq, 511);


 blk_queue_bounce_limit(rq, BLK_BOUNCE_ANY);

 gd->queue = rq;

 return 0;
}
