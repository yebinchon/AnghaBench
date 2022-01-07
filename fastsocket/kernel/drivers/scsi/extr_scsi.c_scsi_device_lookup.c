
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 struct scsi_device* __scsi_device_lookup (struct Scsi_Host*,int ,int ,int ) ;
 scalar_t__ scsi_device_get (struct scsi_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

struct scsi_device *scsi_device_lookup(struct Scsi_Host *shost,
  uint channel, uint id, uint lun)
{
 struct scsi_device *sdev;
 unsigned long flags;

 spin_lock_irqsave(shost->host_lock, flags);
 sdev = __scsi_device_lookup(shost, channel, id, lun);
 if (sdev && scsi_device_get(sdev))
  sdev = ((void*)0);
 spin_unlock_irqrestore(shost->host_lock, flags);

 return sdev;
}
