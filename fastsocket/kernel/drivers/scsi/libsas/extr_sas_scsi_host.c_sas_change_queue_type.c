
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; int tagged_supported; } ;
struct domain_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_deactivate_tcq (struct scsi_device*,int) ;
 int scsi_set_tag_type (struct scsi_device*,int) ;
 struct domain_device* sdev_to_domain_dev (struct scsi_device*) ;

int sas_change_queue_type(struct scsi_device *scsi_dev, int qt)
{
 struct domain_device *dev = sdev_to_domain_dev(scsi_dev);

 if (dev_is_sata(dev))
  return -EINVAL;

 if (!scsi_dev->tagged_supported)
  return 0;

 scsi_deactivate_tcq(scsi_dev, 1);

 scsi_set_tag_type(scsi_dev, qt);
 scsi_activate_tcq(scsi_dev, scsi_dev->queue_depth);

 return qt;
}
