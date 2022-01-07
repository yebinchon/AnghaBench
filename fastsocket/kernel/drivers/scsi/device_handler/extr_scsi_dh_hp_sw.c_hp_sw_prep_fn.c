
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct request {int cmd_flags; } ;
struct hp_sw_dh_data {scalar_t__ path_state; } ;


 int BLKPREP_KILL ;
 int BLKPREP_OK ;
 scalar_t__ HP_SW_PATH_ACTIVE ;
 int REQ_QUIET ;
 struct hp_sw_dh_data* get_hp_sw_data (struct scsi_device*) ;

__attribute__((used)) static int hp_sw_prep_fn(struct scsi_device *sdev, struct request *req)
{
 struct hp_sw_dh_data *h = get_hp_sw_data(sdev);
 int ret = BLKPREP_OK;

 if (h->path_state != HP_SW_PATH_ACTIVE) {
  ret = BLKPREP_KILL;
  req->cmd_flags |= REQ_QUIET;
 }
 return ret;

}
