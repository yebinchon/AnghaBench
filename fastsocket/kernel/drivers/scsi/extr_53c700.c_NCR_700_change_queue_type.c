
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int sdev_target; int queue_depth; TYPE_1__* host; } ;
struct NCR_700_Host_Parameters {int tag_negotiated; } ;
struct TYPE_2__ {int cmd_per_lun; scalar_t__* hostdata; } ;


 int NCR_700_START_TAG_NEGOTIATION ;
 int NCR_700_set_tag_neg_state (struct scsi_device*,int ) ;
 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_deactivate_tcq (struct scsi_device*,int ) ;
 scalar_t__ scsi_get_tag_type (struct scsi_device*) ;
 int scsi_set_tag_type (struct scsi_device*,int) ;
 int scsi_target_quiesce (int ) ;
 int scsi_target_resume (int ) ;
 int sdev_id (struct scsi_device*) ;

__attribute__((used)) static int NCR_700_change_queue_type(struct scsi_device *SDp, int tag_type)
{
 int change_tag = ((tag_type ==0 && scsi_get_tag_type(SDp) != 0)
     || (tag_type != 0 && scsi_get_tag_type(SDp) == 0));
 struct NCR_700_Host_Parameters *hostdata =
  (struct NCR_700_Host_Parameters *)SDp->host->hostdata[0];

 scsi_set_tag_type(SDp, tag_type);





 if (change_tag)
  scsi_target_quiesce(SDp->sdev_target);

 if (!tag_type) {


  scsi_deactivate_tcq(SDp, SDp->host->cmd_per_lun);
  hostdata->tag_negotiated &= ~(1 << sdev_id(SDp));
 } else {


  scsi_activate_tcq(SDp, SDp->queue_depth);
  if (change_tag)
   NCR_700_set_tag_neg_state(SDp, NCR_700_START_TAG_NEGOTIATION);
 }
 if (change_tag)
  scsi_target_resume(SDp->sdev_target);

 return tag_type;
}
