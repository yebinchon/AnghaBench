
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ channel; int id; int dev; struct MPT2SAS_TARGET* hostdata; } ;
struct scsi_device {int no_uld_attach; struct MPT2SAS_DEVICE* hostdata; int lun; } ;
struct _raid_device {struct scsi_device* sdev; } ;
struct Scsi_Host {int dummy; } ;
struct MPT2SAS_TARGET {int flags; int num_luns; } ;
struct MPT2SAS_DEVICE {struct MPT2SAS_TARGET* sas_target; int flags; int lun; } ;
struct MPT2SAS_ADAPTER {int raid_device_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MPT_DEVICE_FLAGS_INIT ;
 int MPT_TARGET_FLAGS_RAID_COMPONENT ;
 scalar_t__ RAID_CHANNEL ;
 struct _raid_device* _scsih_raid_device_find_by_id (struct MPT2SAS_ADAPTER*,int ,scalar_t__) ;
 struct Scsi_Host* dev_to_shost (int *) ;
 struct MPT2SAS_DEVICE* kzalloc (int,int ) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 struct MPT2SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
_scsih_slave_alloc(struct scsi_device *sdev)
{
 struct Scsi_Host *shost;
 struct MPT2SAS_ADAPTER *ioc;
 struct MPT2SAS_TARGET *sas_target_priv_data;
 struct MPT2SAS_DEVICE *sas_device_priv_data;
 struct scsi_target *starget;
 struct _raid_device *raid_device;
 unsigned long flags;

 sas_device_priv_data = kzalloc(sizeof(struct scsi_device), GFP_KERNEL);
 if (!sas_device_priv_data)
  return -ENOMEM;

 sas_device_priv_data->lun = sdev->lun;
 sas_device_priv_data->flags = MPT_DEVICE_FLAGS_INIT;

 starget = scsi_target(sdev);
 sas_target_priv_data = starget->hostdata;
 sas_target_priv_data->num_luns++;
 sas_device_priv_data->sas_target = sas_target_priv_data;
 sdev->hostdata = sas_device_priv_data;
 if ((sas_target_priv_data->flags & MPT_TARGET_FLAGS_RAID_COMPONENT))
  sdev->no_uld_attach = 1;

 shost = dev_to_shost(&starget->dev);
 ioc = shost_priv(shost);
 if (starget->channel == RAID_CHANNEL) {
  spin_lock_irqsave(&ioc->raid_device_lock, flags);
  raid_device = _scsih_raid_device_find_by_id(ioc,
      starget->id, starget->channel);
  if (raid_device)
   raid_device->sdev = sdev;
  spin_unlock_irqrestore(&ioc->raid_device_lock, flags);
 }

 return 0;
}
