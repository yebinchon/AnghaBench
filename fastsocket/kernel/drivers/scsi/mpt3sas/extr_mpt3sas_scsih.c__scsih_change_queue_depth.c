
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int inquiry_len; int queue_depth; int* inquiry; int scsi_level; int ordered_tags; int simple_tags; int tagged_supported; } ;


 int EOPNOTSUPP ;
 int KERN_INFO ;
 int SCSI_QDEPTH_DEFAULT ;
 int SCSI_QDEPTH_QFULL ;
 int SCSI_QDEPTH_RAMP_UP ;
 int _scsih_adjust_queue_depth (struct scsi_device*,int) ;
 int scsi_track_queue_full (struct scsi_device*,int) ;
 int sdev_printk (int ,struct scsi_device*,char*,int,int ,int ,int ,int ,int) ;

__attribute__((used)) static int
_scsih_change_queue_depth(struct scsi_device *sdev, int qdepth, int reason)
{
 if (reason == SCSI_QDEPTH_DEFAULT || reason == SCSI_QDEPTH_RAMP_UP)
  _scsih_adjust_queue_depth(sdev, qdepth);
 else if (reason == SCSI_QDEPTH_QFULL)
  scsi_track_queue_full(sdev, qdepth);
 else
  return -EOPNOTSUPP;

 if (sdev->inquiry_len > 7)
  sdev_printk(KERN_INFO, sdev, "qdepth(%d), tagged(%d), " "simple(%d), ordered(%d), scsi_level(%d), cmd_que(%d)\n",

  sdev->queue_depth, sdev->tagged_supported, sdev->simple_tags,
  sdev->ordered_tags, sdev->scsi_level,
  (sdev->inquiry[7] & 2) >> 1);

 return sdev->queue_depth;
}
