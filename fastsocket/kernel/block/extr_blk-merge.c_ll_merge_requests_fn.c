
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int nr_phys_segments; TYPE_1__* biotail; TYPE_2__* bio; scalar_t__ special; } ;
struct TYPE_4__ {unsigned int bi_seg_front_size; } ;
struct TYPE_3__ {unsigned int bi_seg_back_size; } ;


 scalar_t__ blk_phys_contig_segment (struct request_queue*,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ blk_rq_get_max_sectors (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 int queue_max_segments (struct request_queue*) ;

__attribute__((used)) static int ll_merge_requests_fn(struct request_queue *q, struct request *req,
    struct request *next)
{
 int total_phys_segments;
 unsigned int seg_size =
  req->biotail->bi_seg_back_size + next->bio->bi_seg_front_size;





 if (req->special || next->special)
  return 0;




 if ((blk_rq_sectors(req) + blk_rq_sectors(next)) >
     blk_rq_get_max_sectors(req))
  return 0;

 total_phys_segments = req->nr_phys_segments + next->nr_phys_segments;
 if (blk_phys_contig_segment(q, req->biotail, next->bio)) {
  if (req->nr_phys_segments == 1)
   req->bio->bi_seg_front_size = seg_size;
  if (next->nr_phys_segments == 1)
   next->biotail->bi_seg_back_size = seg_size;
  total_phys_segments--;
 }

 if (total_phys_segments > queue_max_segments(q))
  return 0;


 req->nr_phys_segments = total_phys_segments;
 return 1;
}
