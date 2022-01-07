
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_disk; int q; struct request* next_rq; } ;


 int add_disk_randomness (int ) ;
 int blk_bidi_rq (struct request*) ;
 scalar_t__ blk_queue_add_random (int ) ;
 scalar_t__ blk_update_request (struct request*,int,unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool blk_update_bidi_request(struct request *rq, int error,
        unsigned int nr_bytes,
        unsigned int bidi_bytes)
{
 if (blk_update_request(rq, error, nr_bytes))
  return 1;


 if (unlikely(blk_bidi_rq(rq)) &&
     blk_update_request(rq->next_rq, error, bidi_bytes))
  return 1;

 if (blk_queue_add_random(rq->q))
  add_disk_randomness(rq->rq_disk);

 return 0;
}
