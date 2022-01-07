
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int tagged_supported; } ;
struct TYPE_2__ {int ap; } ;
struct domain_device {TYPE_1__ sata_dev; } ;


 int EOPNOTSUPP ;



 int __ata_change_queue_depth (int ,struct scsi_device*,int,int) ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int scsi_get_tag_type (struct scsi_device*) ;
 int scsi_track_queue_full (struct scsi_device*,int) ;
 struct domain_device* sdev_to_domain_dev (struct scsi_device*) ;

int sas_change_queue_depth(struct scsi_device *sdev, int depth, int reason)
{
 struct domain_device *dev = sdev_to_domain_dev(sdev);

 if (dev_is_sata(dev))
  return __ata_change_queue_depth(dev->sata_dev.ap, sdev, depth,
      reason);

 switch (reason) {
 case 130:
 case 128:
  if (!sdev->tagged_supported)
   depth = 1;
  scsi_adjust_queue_depth(sdev, scsi_get_tag_type(sdev), depth);
  break;
 case 129:
  scsi_track_queue_full(sdev, depth);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return depth;
}
