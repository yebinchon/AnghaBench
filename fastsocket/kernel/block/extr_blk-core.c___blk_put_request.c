
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int ref_count; int cmd_flags; int hash; int queuelist; int * bio; } ;


 int BUG_ON (int) ;
 int REQ_ALLOCED ;
 int WARN_ON (int ) ;
 int blk_free_request (struct request_queue*,struct request*) ;
 int elv_completed_request (struct request_queue*,struct request*) ;
 int freed_request (struct request_queue*,unsigned int) ;
 int hlist_unhashed (int *) ;
 int list_empty (int *) ;
 scalar_t__ unlikely (int) ;

void __blk_put_request(struct request_queue *q, struct request *req)
{
 if (unlikely(!q))
  return;
 if (unlikely(--req->ref_count))
  return;

 elv_completed_request(q, req);


 WARN_ON(req->bio != ((void*)0));





 if (req->cmd_flags & REQ_ALLOCED) {
  unsigned int flags = req->cmd_flags;

  BUG_ON(!list_empty(&req->queuelist));
  BUG_ON(!hlist_unhashed(&req->hash));

  blk_free_request(q, req);
  freed_request(q, flags);
 }
}
