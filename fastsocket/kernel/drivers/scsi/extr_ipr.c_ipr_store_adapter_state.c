
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {int hrrq_num; int in_reset_reload; int reset_wait_q; TYPE_2__* host; scalar_t__ in_ioa_bringdown; scalar_t__ reset_retries; TYPE_1__* hrrq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {int _lock; scalar_t__ ioa_is_dead; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 size_t IPR_INIT_HRRQ ;
 int IPR_SHUTDOWN_NONE ;
 int capable (int ) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int strncmp (char const*,char*,int) ;
 int wait_event (int ,int) ;
 int wmb () ;

__attribute__((used)) static ssize_t ipr_store_adapter_state(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;
 unsigned long lock_flags;
 int result = count, i;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 if (ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead &&
     !strncmp(buf, "online", 6)) {
  for (i = 0; i < ioa_cfg->hrrq_num; i++) {
   spin_lock(&ioa_cfg->hrrq[i]._lock);
   ioa_cfg->hrrq[i].ioa_is_dead = 0;
   spin_unlock(&ioa_cfg->hrrq[i]._lock);
  }
  wmb();
  ioa_cfg->reset_retries = 0;
  ioa_cfg->in_ioa_bringdown = 0;
  ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_NONE);
 }
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);

 return result;
}
