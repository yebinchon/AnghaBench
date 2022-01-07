
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct mmc_queue* queuedata; } ;
struct request {int cmd_flags; } ;
struct mmc_queue {int thread; int req; } ;


 int EIO ;
 int REQ_QUIET ;
 int __blk_end_request_all (struct request*,int ) ;
 struct request* blk_fetch_request (struct request_queue*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void mmc_request(struct request_queue *q)
{
 struct mmc_queue *mq = q->queuedata;
 struct request *req;

 if (!mq) {
  while ((req = blk_fetch_request(q)) != ((void*)0)) {
   req->cmd_flags |= REQ_QUIET;
   __blk_end_request_all(req, -EIO);
  }
  return;
 }

 if (!mq->req)
  wake_up_process(mq->thread);
}
