
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct request {int cmd_flags; } ;
struct alua_dh_data {scalar_t__ state; } ;


 int BLKPREP_DEFER ;
 int BLKPREP_KILL ;
 int BLKPREP_OK ;
 int REQ_QUIET ;
 scalar_t__ TPGS_STATE_LBA_DEPENDENT ;
 scalar_t__ TPGS_STATE_NONOPTIMIZED ;
 scalar_t__ TPGS_STATE_OPTIMIZED ;
 scalar_t__ TPGS_STATE_TRANSITIONING ;
 struct alua_dh_data* get_alua_data (struct scsi_device*) ;

__attribute__((used)) static int alua_prep_fn(struct scsi_device *sdev, struct request *req)
{
 struct alua_dh_data *h = get_alua_data(sdev);
 int ret = BLKPREP_OK;

 if (h->state == TPGS_STATE_TRANSITIONING)
  ret = BLKPREP_DEFER;
 else if (h->state != TPGS_STATE_OPTIMIZED &&
   h->state != TPGS_STATE_NONOPTIMIZED &&
   h->state != TPGS_STATE_LBA_DEPENDENT) {
  ret = BLKPREP_KILL;
  req->cmd_flags |= REQ_QUIET;
 }
 return ret;

}
