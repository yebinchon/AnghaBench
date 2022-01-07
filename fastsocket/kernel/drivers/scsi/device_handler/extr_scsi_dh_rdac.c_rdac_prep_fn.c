
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct request {int cmd_flags; } ;
struct rdac_dh_data {scalar_t__ state; } ;


 int BLKPREP_KILL ;
 int BLKPREP_OK ;
 scalar_t__ RDAC_STATE_ACTIVE ;
 int REQ_QUIET ;
 struct rdac_dh_data* get_rdac_data (struct scsi_device*) ;

__attribute__((used)) static int rdac_prep_fn(struct scsi_device *sdev, struct request *req)
{
 struct rdac_dh_data *h = get_rdac_data(sdev);
 int ret = BLKPREP_OK;

 if (h->state != RDAC_STATE_ACTIVE) {
  ret = BLKPREP_KILL;
  req->cmd_flags |= REQ_QUIET;
 }
 return ret;

}
