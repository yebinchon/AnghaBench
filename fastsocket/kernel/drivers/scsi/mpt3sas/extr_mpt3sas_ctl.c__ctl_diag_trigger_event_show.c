
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct SL_WH_EVENT_TRIGGERS_T {int dummy; } ;
struct MPT3SAS_ADAPTER {int diag_trigger_lock; int diag_trigger_event; } ;
typedef int ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int memcpy (char*,int *,int) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t
_ctl_diag_trigger_event_show(struct device *cdev,
 struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
 unsigned long flags;
 ssize_t rc;

 spin_lock_irqsave(&ioc->diag_trigger_lock, flags);
 rc = sizeof(struct SL_WH_EVENT_TRIGGERS_T);
 memcpy(buf, &ioc->diag_trigger_event, rc);
 spin_unlock_irqrestore(&ioc->diag_trigger_lock, flags);
 return rc;
}
