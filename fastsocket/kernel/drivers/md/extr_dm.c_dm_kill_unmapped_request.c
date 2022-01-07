
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd_flags; struct dm_rq_target_io* end_io_data; } ;
struct dm_rq_target_io {struct request* orig; } ;


 int REQ_FAILED ;
 int dm_complete_request (struct request*,int) ;

void dm_kill_unmapped_request(struct request *clone, int error)
{
 struct dm_rq_target_io *tio = clone->end_io_data;
 struct request *rq = tio->orig;

 rq->cmd_flags |= REQ_FAILED;
 dm_complete_request(clone, error);
}
