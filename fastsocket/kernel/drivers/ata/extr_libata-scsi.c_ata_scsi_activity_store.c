
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
typedef size_t ssize_t ;
typedef enum sw_activity { ____Placeholder_sw_activity } sw_activity ;
struct TYPE_2__ {int (* sw_activity_store ) (struct ata_device*,int) ;} ;


 int ATA_FLAG_SW_ACTIVITY ;


 size_t EINVAL ;

 struct ata_device* ata_scsi_find_dev (struct ata_port*,struct scsi_device*) ;
 struct ata_port* ata_shost_to_port (int ) ;
 int simple_strtoul (char const*,int *,int ) ;
 int stub1 (struct ata_device*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
ata_scsi_activity_store(struct device *dev, struct device_attribute *attr,
 const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct ata_port *ap = ata_shost_to_port(sdev->host);
 struct ata_device *atadev = ata_scsi_find_dev(ap, sdev);
 enum sw_activity val;
 int rc;

 if (ap->ops->sw_activity_store && (ap->flags & ATA_FLAG_SW_ACTIVITY)) {
  val = simple_strtoul(buf, ((void*)0), 0);
  switch (val) {
  case 128: case 129: case 130:
   rc = ap->ops->sw_activity_store(atadev, val);
   if (!rc)
    return count;
   else
    return rc;
  }
 }
 return -EINVAL;
}
