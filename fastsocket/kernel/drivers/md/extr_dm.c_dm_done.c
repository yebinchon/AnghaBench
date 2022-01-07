
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {struct dm_rq_target_io* end_io_data; } ;
struct dm_rq_target_io {int info; TYPE_2__* ti; } ;
typedef int (* dm_request_endio_fn ) (TYPE_2__*,struct request*,int,int *) ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* rq_end_io ) (TYPE_2__*,struct request*,int,int *) ;} ;


 int BUG () ;
 int DMWARN (char*,int) ;
 int DM_ENDIO_INCOMPLETE ;
 int DM_ENDIO_REQUEUE ;
 int dm_end_request (struct request*,int) ;
 int dm_requeue_unmapped_request (struct request*) ;

__attribute__((used)) static void dm_done(struct request *clone, int error, bool mapped)
{
 int r = error;
 struct dm_rq_target_io *tio = clone->end_io_data;
 dm_request_endio_fn rq_end_io = ((void*)0);

 if (tio->ti) {
  rq_end_io = tio->ti->type->rq_end_io;

  if (mapped && rq_end_io)
   r = rq_end_io(tio->ti, clone, error, &tio->info);
 }

 if (r <= 0)

  dm_end_request(clone, r);
 else if (r == DM_ENDIO_INCOMPLETE)

  return;
 else if (r == DM_ENDIO_REQUEUE)

  dm_requeue_unmapped_request(clone);
 else {
  DMWARN("unimplemented target endio return value: %d", r);
  BUG();
 }
}
