
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {TYPE_2__* scsi_dh_data; } ;
struct scsi_cmnd {int cmnd; } ;
struct request {int nr_phys_segments; } ;
struct TYPE_4__ {TYPE_1__* scsi_dh; } ;
struct TYPE_3__ {int (* prep_fn ) (struct scsi_device*,struct request*) ;} ;


 int BLKPREP_DEFER ;
 int BLKPREP_OK ;
 int BLK_MAX_CDB ;
 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int memset (int ,int ,int ) ;
 struct scsi_cmnd* scsi_get_cmd_from_req (struct scsi_device*,struct request*) ;
 int scsi_init_io (struct scsi_cmnd*,int ) ;
 int scsi_prep_state_check (struct scsi_device*,struct request*) ;
 int stub1 (struct scsi_device*,struct request*) ;
 scalar_t__ unlikely (int) ;

int scsi_setup_fs_cmnd(struct scsi_device *sdev, struct request *req)
{
 struct scsi_cmnd *cmd;
 int ret = scsi_prep_state_check(sdev, req);

 if (ret != BLKPREP_OK)
  return ret;

 if (unlikely(sdev->scsi_dh_data && sdev->scsi_dh_data->scsi_dh
    && sdev->scsi_dh_data->scsi_dh->prep_fn)) {
  ret = sdev->scsi_dh_data->scsi_dh->prep_fn(sdev, req);
  if (ret != BLKPREP_OK)
   return ret;
 }




 BUG_ON(!req->nr_phys_segments);

 cmd = scsi_get_cmd_from_req(sdev, req);
 if (unlikely(!cmd))
  return BLKPREP_DEFER;

 memset(cmd->cmnd, 0, BLK_MAX_CDB);
 return scsi_init_io(cmd, GFP_ATOMIC);
}
