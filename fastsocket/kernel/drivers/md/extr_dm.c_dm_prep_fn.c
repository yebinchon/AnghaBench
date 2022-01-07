
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct mapped_device* queuedata; } ;
struct request {int cmd_flags; struct request* special; } ;
struct mapped_device {int dummy; } ;


 int BLKPREP_DEFER ;
 int BLKPREP_KILL ;
 int BLKPREP_OK ;
 int DMWARN (char*) ;
 int GFP_ATOMIC ;
 int REQ_DONTPREP ;
 struct request* clone_rq (struct request*,struct mapped_device*,int ) ;
 scalar_t__ unlikely (struct request*) ;

__attribute__((used)) static int dm_prep_fn(struct request_queue *q, struct request *rq)
{
 struct mapped_device *md = q->queuedata;
 struct request *clone;

 if (unlikely(rq->special)) {
  DMWARN("Already has something in rq->special.");
  return BLKPREP_KILL;
 }

 clone = clone_rq(rq, md, GFP_ATOMIC);
 if (!clone)
  return BLKPREP_DEFER;

 rq->special = clone;
 rq->cmd_flags |= REQ_DONTPREP;

 return BLKPREP_OK;
}
