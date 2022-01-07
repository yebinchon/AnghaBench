
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; } ;


 int EOPNOTSUPP ;



 int qla2x00_adjust_sdev_qdepth_up (struct scsi_device*,int) ;
 int qla2x00_handle_queue_full (struct scsi_device*,int) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int scsi_get_tag_type (struct scsi_device*) ;

__attribute__((used)) static int
qla2x00_change_queue_depth(struct scsi_device *sdev, int qdepth, int reason)
{
 switch (reason) {
 case 130:
  scsi_adjust_queue_depth(sdev, scsi_get_tag_type(sdev), qdepth);
  break;
 case 129:
  qla2x00_handle_queue_full(sdev, qdepth);
  break;
 case 128:
  qla2x00_adjust_sdev_qdepth_up(sdev, qdepth);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return sdev->queue_depth;
}
