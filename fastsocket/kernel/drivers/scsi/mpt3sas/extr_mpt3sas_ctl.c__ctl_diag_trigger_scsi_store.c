
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct SL_WH_SCSI_TRIGGERS_T {int dummy; } ;
struct SL_WH_EVENT_TRIGGERS_T {int dummy; } ;
struct TYPE_3__ {scalar_t__ ValidEntries; } ;
struct MPT3SAS_ADAPTER {int diag_trigger_lock; TYPE_1__ diag_trigger_scsi; } ;
typedef int ssize_t ;


 scalar_t__ NUM_VALID_ENTRIES ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int memcpy (TYPE_1__*,char const*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int min (int,size_t) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t
_ctl_diag_trigger_scsi_store(struct device *cdev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
 unsigned long flags;
 ssize_t sz;

 spin_lock_irqsave(&ioc->diag_trigger_lock, flags);
 sz = min(sizeof(struct SL_WH_SCSI_TRIGGERS_T), count);
 memset(&ioc->diag_trigger_scsi, 0,
     sizeof(struct SL_WH_EVENT_TRIGGERS_T));
 memcpy(&ioc->diag_trigger_scsi, buf, sz);
 if (ioc->diag_trigger_scsi.ValidEntries > NUM_VALID_ENTRIES)
  ioc->diag_trigger_scsi.ValidEntries = NUM_VALID_ENTRIES;
 spin_unlock_irqrestore(&ioc->diag_trigger_lock, flags);
 return sz;
}
