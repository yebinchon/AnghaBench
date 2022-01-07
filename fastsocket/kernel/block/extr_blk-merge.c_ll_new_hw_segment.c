
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct request* last_merge; } ;
struct request {scalar_t__ nr_phys_segments; int cmd_flags; } ;
struct bio {int dummy; } ;


 int REQ_NOMERGE ;
 int bio_phys_segments (struct request_queue*,struct bio*) ;
 scalar_t__ queue_max_segments (struct request_queue*) ;

__attribute__((used)) static inline int ll_new_hw_segment(struct request_queue *q,
        struct request *req,
        struct bio *bio)
{
 int nr_phys_segs = bio_phys_segments(q, bio);

 if (req->nr_phys_segments + nr_phys_segs > queue_max_segments(q)) {
  req->cmd_flags |= REQ_NOMERGE;
  if (req == q->last_merge)
   q->last_merge = ((void*)0);
  return 0;
 }





 req->nr_phys_segments += nr_phys_segs;
 return 1;
}
