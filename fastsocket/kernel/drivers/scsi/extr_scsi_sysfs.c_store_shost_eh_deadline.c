
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int eh_deadline; int host_lock; TYPE_1__* transportt; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ eh_strategy_handler; } ;


 int EBUSY ;
 int EINVAL ;
 int HZ ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 scalar_t__ scsi_host_in_recovery (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t
store_shost_eh_deadline(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 int ret = -EINVAL;
 int eh_deadline;
 unsigned long flags;

 if (shost->transportt->eh_strategy_handler)
  return ret;

 if (sscanf(buf, "%d\n", &eh_deadline) == 1) {
  spin_lock_irqsave(shost->host_lock, flags);
  if (scsi_host_in_recovery(shost))
   ret = -EBUSY;
  else {
   shost->eh_deadline = eh_deadline * HZ;
   ret = count;
  }
  spin_unlock_irqrestore(shost->host_lock, flags);
 }
 return ret;
}
