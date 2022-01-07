
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int flags; TYPE_1__* ops; } ;
struct ata_device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* sw_activity_show ) (struct ata_device*,char*) ;} ;


 int ATA_FLAG_SW_ACTIVITY ;
 int EINVAL ;
 struct ata_device* ata_scsi_find_dev (struct ata_port*,struct scsi_device*) ;
 struct ata_port* ata_shost_to_port (int ) ;
 int stub1 (struct ata_device*,char*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
ata_scsi_activity_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct ata_port *ap = ata_shost_to_port(sdev->host);
 struct ata_device *atadev = ata_scsi_find_dev(ap, sdev);

 if (ap->ops->sw_activity_show && (ap->flags & ATA_FLAG_SW_ACTIVITY))
  return ap->ops->sw_activity_show(atadev, buf);
 return -EINVAL;
}
