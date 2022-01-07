
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int * end_io; int cmd_flags; int biotail; int bio; } ;


 int REQ_FLUSH_SEQ ;

__attribute__((used)) static void blk_flush_restore_request(struct request *rq)
{





 rq->bio = rq->biotail;


 rq->cmd_flags &= ~REQ_FLUSH_SEQ;
 rq->end_io = ((void*)0);
}
