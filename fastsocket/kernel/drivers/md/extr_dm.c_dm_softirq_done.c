
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd_flags; struct dm_rq_target_io* end_io_data; struct request* completion_data; } ;
struct dm_rq_target_io {int error; } ;


 int REQ_FAILED ;
 int dm_done (struct request*,int ,int) ;

__attribute__((used)) static void dm_softirq_done(struct request *rq)
{
 bool mapped = 1;
 struct request *clone = rq->completion_data;
 struct dm_rq_target_io *tio = clone->end_io_data;

 if (rq->cmd_flags & REQ_FAILED)
  mapped = 0;

 dm_done(clone, tio->error, mapped);
}
