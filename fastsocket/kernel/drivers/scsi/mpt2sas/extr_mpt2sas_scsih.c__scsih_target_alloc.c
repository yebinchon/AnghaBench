
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct scsi_target {int channel; int id; TYPE_2__ dev; struct MPT2SAS_TARGET* hostdata; } ;
struct TYPE_3__ {int sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct _sas_device {int handle; int channel; int id; struct scsi_target* starget; int sas_address; } ;
struct _raid_device {struct scsi_target* starget; int wwid; int handle; } ;
struct Scsi_Host {int dummy; } ;
struct MPT2SAS_TARGET {int flags; int sas_address; int handle; struct _raid_device* raid_device; struct scsi_target* starget; } ;
struct MPT2SAS_ADAPTER {int sas_device_lock; int pd_handles; int raid_device_lock; scalar_t__ is_warpdrive; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MPT2SAS_INVALID_DEVICE_HANDLE ;
 int MPT_TARGET_FLAGS_RAID_COMPONENT ;
 int MPT_TARGET_FLAGS_VOLUME ;
 int RAID_CHANNEL ;
 struct _raid_device* _scsih_raid_device_find_by_id (struct MPT2SAS_ADAPTER*,int ,int ) ;
 struct sas_rphy* dev_to_rphy (int ) ;
 struct Scsi_Host* dev_to_shost (TYPE_2__*) ;
 struct MPT2SAS_TARGET* kzalloc (int,int ) ;
 struct _sas_device* mpt2sas_scsih_sas_device_find_by_sas_address (struct MPT2SAS_ADAPTER*,int ) ;
 struct MPT2SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int
_scsih_target_alloc(struct scsi_target *starget)
{
 struct Scsi_Host *shost = dev_to_shost(&starget->dev);
 struct MPT2SAS_ADAPTER *ioc = shost_priv(shost);
 struct MPT2SAS_TARGET *sas_target_priv_data;
 struct _sas_device *sas_device;
 struct _raid_device *raid_device;
 unsigned long flags;
 struct sas_rphy *rphy;

 sas_target_priv_data = kzalloc(sizeof(struct scsi_target), GFP_KERNEL);
 if (!sas_target_priv_data)
  return -ENOMEM;

 starget->hostdata = sas_target_priv_data;
 sas_target_priv_data->starget = starget;
 sas_target_priv_data->handle = MPT2SAS_INVALID_DEVICE_HANDLE;


 if (starget->channel == RAID_CHANNEL) {
  spin_lock_irqsave(&ioc->raid_device_lock, flags);
  raid_device = _scsih_raid_device_find_by_id(ioc, starget->id,
      starget->channel);
  if (raid_device) {
   sas_target_priv_data->handle = raid_device->handle;
   sas_target_priv_data->sas_address = raid_device->wwid;
   sas_target_priv_data->flags |= MPT_TARGET_FLAGS_VOLUME;
   if (ioc->is_warpdrive)
    sas_target_priv_data->raid_device = raid_device;
   raid_device->starget = starget;
  }
  spin_unlock_irqrestore(&ioc->raid_device_lock, flags);
  return 0;
 }


 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 rphy = dev_to_rphy(starget->dev.parent);
 sas_device = mpt2sas_scsih_sas_device_find_by_sas_address(ioc,
    rphy->identify.sas_address);

 if (sas_device) {
  sas_target_priv_data->handle = sas_device->handle;
  sas_target_priv_data->sas_address = sas_device->sas_address;
  sas_device->starget = starget;
  sas_device->id = starget->id;
  sas_device->channel = starget->channel;
  if (test_bit(sas_device->handle, ioc->pd_handles))
   sas_target_priv_data->flags |=
       MPT_TARGET_FLAGS_RAID_COMPONENT;
 }
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);

 return 0;
}
