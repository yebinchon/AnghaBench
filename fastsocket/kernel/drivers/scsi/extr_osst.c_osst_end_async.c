
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rq_map_data {int pages; } ;
struct request {int q; int errors; struct osst_request* end_io_data; } ;
struct osst_tape {scalar_t__ write_pending; TYPE_2__* buffer; } ;
struct osst_request {scalar_t__ bio; scalar_t__ waiting; int result; struct osst_tape* stp; } ;
struct TYPE_3__ {int midlevel_result; } ;
struct TYPE_4__ {TYPE_1__ cmdstat; struct rq_map_data map_data; } ;


 int __blk_put_request (int ,struct request*) ;
 int blk_rq_unmap_user (scalar_t__) ;
 int complete (scalar_t__) ;
 int kfree (int ) ;

__attribute__((used)) static void osst_end_async(struct request *req, int update)
{
 struct osst_request *SRpnt = req->end_io_data;
 struct osst_tape *STp = SRpnt->stp;
 struct rq_map_data *mdata = &SRpnt->stp->buffer->map_data;

 STp->buffer->cmdstat.midlevel_result = SRpnt->result = req->errors;



 if (SRpnt->waiting)
  complete(SRpnt->waiting);

 if (SRpnt->bio) {
  kfree(mdata->pages);
  blk_rq_unmap_user(SRpnt->bio);
 }

 __blk_put_request(req->q, req);
}
