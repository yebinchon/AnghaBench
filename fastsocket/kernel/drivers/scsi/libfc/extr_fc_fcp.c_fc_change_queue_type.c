
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; scalar_t__ tagged_supported; } ;


 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_deactivate_tcq (struct scsi_device*,int ) ;
 int scsi_set_tag_type (struct scsi_device*,int) ;

int fc_change_queue_type(struct scsi_device *sdev, int tag_type)
{
 if (sdev->tagged_supported) {
  scsi_set_tag_type(sdev, tag_type);
  if (tag_type)
   scsi_activate_tcq(sdev, sdev->queue_depth);
  else
   scsi_deactivate_tcq(sdev, sdev->queue_depth);
 } else
  tag_type = 0;

 return tag_type;
}
