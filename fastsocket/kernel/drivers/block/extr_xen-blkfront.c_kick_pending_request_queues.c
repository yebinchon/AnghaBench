
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkfront_info {int rq; int ring; } ;


 int RING_FULL (int *) ;
 int blk_start_queue (int ) ;
 int do_blkif_request (int ) ;

__attribute__((used)) static void kick_pending_request_queues(struct blkfront_info *info)
{
 if (!RING_FULL(&info->ring)) {

  blk_start_queue(info->rq);

  do_blkif_request(info->rq);
 }
}
