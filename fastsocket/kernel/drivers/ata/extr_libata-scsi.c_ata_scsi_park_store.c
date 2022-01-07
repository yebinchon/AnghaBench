
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int lock; int park_req_pending; } ;
struct ata_device {scalar_t__ class; int flags; size_t devno; TYPE_2__* link; int unpark_deadline; } ;
typedef int ssize_t ;
struct TYPE_3__ {int * dev_action; } ;
struct TYPE_4__ {TYPE_1__ eh_info; } ;


 scalar_t__ ATA_DEV_ATA ;
 int ATA_DFLAG_NO_UNLOAD ;
 int ATA_EH_PARK ;
 long ATA_TMOUT_MAX_PARK ;
 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int EOVERFLOW ;
 int ata_deadline (int ,long) ;
 int ata_port_schedule_eh (struct ata_port*) ;
 struct ata_device* ata_scsi_find_dev (struct ata_port*,struct scsi_device*) ;
 struct ata_port* ata_shost_to_port (int ) ;
 int complete (int *) ;
 int jiffies ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int strict_strtol (char const*,int,long*) ;
 struct scsi_device* to_scsi_device (struct device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t ata_scsi_park_store(struct device *device,
       struct device_attribute *attr,
       const char *buf, size_t len)
{
 struct scsi_device *sdev = to_scsi_device(device);
 struct ata_port *ap;
 struct ata_device *dev;
 long int input;
 unsigned long flags;
 int rc;

 rc = strict_strtol(buf, 10, &input);
 if (rc || input < -2)
  return -EINVAL;
 if (input > ATA_TMOUT_MAX_PARK) {
  rc = -EOVERFLOW;
  input = ATA_TMOUT_MAX_PARK;
 }

 ap = ata_shost_to_port(sdev->host);

 spin_lock_irqsave(ap->lock, flags);
 dev = ata_scsi_find_dev(ap, sdev);
 if (unlikely(!dev)) {
  rc = -ENODEV;
  goto unlock;
 }
 if (dev->class != ATA_DEV_ATA) {
  rc = -EOPNOTSUPP;
  goto unlock;
 }

 if (input >= 0) {
  if (dev->flags & ATA_DFLAG_NO_UNLOAD) {
   rc = -EOPNOTSUPP;
   goto unlock;
  }

  dev->unpark_deadline = ata_deadline(jiffies, input);
  dev->link->eh_info.dev_action[dev->devno] |= ATA_EH_PARK;
  ata_port_schedule_eh(ap);
  complete(&ap->park_req_pending);
 } else {
  switch (input) {
  case -1:
   dev->flags &= ~ATA_DFLAG_NO_UNLOAD;
   break;
  case -2:
   dev->flags |= ATA_DFLAG_NO_UNLOAD;
   break;
  }
 }
unlock:
 spin_unlock_irqrestore(ap->lock, flags);

 return rc ? rc : len;
}
