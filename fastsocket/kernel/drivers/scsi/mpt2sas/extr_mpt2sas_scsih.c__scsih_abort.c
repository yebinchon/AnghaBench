
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct scsi_cmnd {int result; TYPE_2__* device; int serial_number; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct MPT2SAS_DEVICE {TYPE_1__* sas_target; } ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_4__ {int lun; int id; int channel; struct MPT2SAS_DEVICE* hostdata; int host; } ;
struct TYPE_3__ {int flags; int handle; } ;


 int DID_NO_CONNECT ;
 int DID_RESET ;
 int FAILED ;
 int KERN_INFO ;
 int MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK ;
 int MPT_TARGET_FLAGS_RAID_COMPONENT ;
 int MPT_TARGET_FLAGS_VOLUME ;
 int SUCCESS ;
 int TM_MUTEX_ON ;
 int _scsih_scsi_lookup_find_by_scmd (struct MPT2SAS_ADAPTER*,struct scsi_cmnd*) ;
 int _scsih_tm_display_info (struct MPT2SAS_ADAPTER*,struct scsi_cmnd*) ;
 int mpt2sas_halt_firmware (struct MPT2SAS_ADAPTER*) ;
 int mpt2sas_scsih_issue_tm (struct MPT2SAS_ADAPTER*,int ,int ,int ,int ,int ,int ,int,int ,int ) ;
 int sdev_printk (int ,TYPE_2__*,char*,...) ;
 struct MPT2SAS_ADAPTER* shost_priv (int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int
_scsih_abort(struct scsi_cmnd *scmd)
{
 struct MPT2SAS_ADAPTER *ioc = shost_priv(scmd->device->host);
 struct MPT2SAS_DEVICE *sas_device_priv_data;
 u16 smid;
 u16 handle;
 int r;

 sdev_printk(KERN_INFO, scmd->device, "attempting task abort! "
     "scmd(%p)\n", scmd);
 _scsih_tm_display_info(ioc, scmd);

 sas_device_priv_data = scmd->device->hostdata;
 if (!sas_device_priv_data || !sas_device_priv_data->sas_target) {
  sdev_printk(KERN_INFO, scmd->device, "device been deleted! "
      "scmd(%p)\n", scmd);
  scmd->result = DID_NO_CONNECT << 16;
  scmd->scsi_done(scmd);
  r = SUCCESS;
  goto out;
 }


 smid = _scsih_scsi_lookup_find_by_scmd(ioc, scmd);
 if (!smid) {
  scmd->result = DID_RESET << 16;
  r = SUCCESS;
  goto out;
 }


 if (sas_device_priv_data->sas_target->flags &
     MPT_TARGET_FLAGS_RAID_COMPONENT ||
     sas_device_priv_data->sas_target->flags & MPT_TARGET_FLAGS_VOLUME) {
  scmd->result = DID_RESET << 16;
  r = FAILED;
  goto out;
 }

 mpt2sas_halt_firmware(ioc);

 handle = sas_device_priv_data->sas_target->handle;
 r = mpt2sas_scsih_issue_tm(ioc, handle, scmd->device->channel,
     scmd->device->id, scmd->device->lun,
     MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK, smid, 30,
     scmd->serial_number, TM_MUTEX_ON);

 out:
 sdev_printk(KERN_INFO, scmd->device, "task abort: %s scmd(%p)\n",
     ((r == SUCCESS) ? "SUCCESS" : "FAILED"), scmd);
 return r;
}
