
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {scalar_t__ cmd_type; int cmd_flags; } ;


 int BLKPREP_KILL ;
 int BLKPREP_OK ;
 int REQ_DONTPREP ;
 scalar_t__ REQ_TYPE_FS ;
 int blk_dump_rq_flags (struct request*,char*) ;

__attribute__((used)) static int mmc_prep_request(struct request_queue *q, struct request *req)
{



 if (req->cmd_type != REQ_TYPE_FS) {
  blk_dump_rq_flags(req, "MMC bad request");
  return BLKPREP_KILL;
 }

 req->cmd_flags |= REQ_DONTPREP;

 return BLKPREP_OK;
}
