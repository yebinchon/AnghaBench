
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct request {int cmd_flags; } ;
struct clariion_dh_data {scalar_t__ lun_state; } ;


 int BLKPREP_KILL ;
 int BLKPREP_OK ;
 scalar_t__ CLARIION_LUN_OWNED ;
 int REQ_QUIET ;
 struct clariion_dh_data* get_clariion_data (struct scsi_device*) ;

__attribute__((used)) static int clariion_prep_fn(struct scsi_device *sdev, struct request *req)
{
 struct clariion_dh_data *h = get_clariion_data(sdev);
 int ret = BLKPREP_OK;

 if (h->lun_state != CLARIION_LUN_OWNED) {
  ret = BLKPREP_KILL;
  req->cmd_flags |= REQ_QUIET;
 }
 return ret;

}
