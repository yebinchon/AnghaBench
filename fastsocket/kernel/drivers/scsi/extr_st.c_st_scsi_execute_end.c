
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_request {scalar_t__ waiting; struct bio* bio; int result; struct scsi_tape* stp; } ;
struct scsi_tape {TYPE_2__* buffer; } ;
struct request {int q; int resid_len; int errors; struct st_request* end_io_data; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int residual; int midlevel_result; } ;
struct TYPE_4__ {TYPE_1__ cmdstat; } ;


 int __blk_put_request (int ,struct request*) ;
 int blk_rq_unmap_user (struct bio*) ;
 int complete (scalar_t__) ;

__attribute__((used)) static void st_scsi_execute_end(struct request *req, int uptodate)
{
 struct st_request *SRpnt = req->end_io_data;
 struct scsi_tape *STp = SRpnt->stp;
 struct bio *tmp;

 STp->buffer->cmdstat.midlevel_result = SRpnt->result = req->errors;
 STp->buffer->cmdstat.residual = req->resid_len;

 tmp = SRpnt->bio;
 if (SRpnt->waiting)
  complete(SRpnt->waiting);

 blk_rq_unmap_user(tmp);
 __blk_put_request(req->q, req);
}
