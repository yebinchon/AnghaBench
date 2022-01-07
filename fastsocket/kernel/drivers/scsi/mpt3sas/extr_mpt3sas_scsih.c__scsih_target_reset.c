
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct scsi_target {int dummy; } ;
struct scsi_cmnd {int result; TYPE_2__* device; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct _sas_device {scalar_t__ volume_handle; } ;
struct MPT3SAS_DEVICE {TYPE_1__* sas_target; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; } ;
struct TYPE_4__ {int id; int channel; struct MPT3SAS_DEVICE* hostdata; struct scsi_target* sdev_target; int host; } ;
struct TYPE_3__ {int flags; scalar_t__ handle; } ;


 int DID_NO_CONNECT ;
 int DID_RESET ;
 int FAILED ;
 int KERN_INFO ;
 int MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET ;
 int MPT_TARGET_FLAGS_RAID_COMPONENT ;
 int SUCCESS ;
 int TM_MUTEX_ON ;
 struct _sas_device* _scsih_sas_device_find_by_handle (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int _scsih_tm_display_info (struct MPT3SAS_ADAPTER*,struct scsi_cmnd*) ;
 int mpt3sas_scsih_issue_tm (struct MPT3SAS_ADAPTER*,scalar_t__,int ,int ,int ,int ,int ,int,int ,int ) ;
 struct MPT3SAS_ADAPTER* shost_priv (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int starget_printk (int ,struct scsi_target*,char*,...) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int
_scsih_target_reset(struct scsi_cmnd *scmd)
{
 struct MPT3SAS_ADAPTER *ioc = shost_priv(scmd->device->host);
 struct MPT3SAS_DEVICE *sas_device_priv_data;
 struct _sas_device *sas_device;
 unsigned long flags;
 u16 handle;
 int r;
 struct scsi_target *starget = scmd->device->sdev_target;

 starget_printk(KERN_INFO, starget, "attempting target reset! scmd(%p)\n",
  scmd);
 _scsih_tm_display_info(ioc, scmd);

 sas_device_priv_data = scmd->device->hostdata;
 if (!sas_device_priv_data || !sas_device_priv_data->sas_target) {
  starget_printk(KERN_INFO, starget, "target been deleted! scmd(%p)\n",
   scmd);
  scmd->result = DID_NO_CONNECT << 16;
  scmd->scsi_done(scmd);
  r = SUCCESS;
  goto out;
 }


 handle = 0;
 if (sas_device_priv_data->sas_target->flags &
     MPT_TARGET_FLAGS_RAID_COMPONENT) {
  spin_lock_irqsave(&ioc->sas_device_lock, flags);
  sas_device = _scsih_sas_device_find_by_handle(ioc,
     sas_device_priv_data->sas_target->handle);
  if (sas_device)
   handle = sas_device->volume_handle;
  spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 } else
  handle = sas_device_priv_data->sas_target->handle;

 if (!handle) {
  scmd->result = DID_RESET << 16;
  r = FAILED;
  goto out;
 }

 r = mpt3sas_scsih_issue_tm(ioc, handle, scmd->device->channel,
     scmd->device->id, 0, MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET, 0,
     30, 0, TM_MUTEX_ON);

 out:
 starget_printk(KERN_INFO, starget, "target reset: %s scmd(%p)\n",
     ((r == SUCCESS) ? "SUCCESS" : "FAILED"), scmd);
 return r;
}
