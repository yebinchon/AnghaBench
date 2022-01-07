
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct scsi_target {scalar_t__ channel; scalar_t__ id; struct MPT3SAS_TARGET* hostdata; TYPE_2__ dev; } ;
struct TYPE_3__ {int sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct _sas_device {scalar_t__ id; scalar_t__ channel; struct scsi_target* starget; } ;
struct _raid_device {int * sdev; int * starget; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_TARGET {int dummy; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; int raid_device_lock; } ;


 scalar_t__ RAID_CHANNEL ;
 struct _raid_device* _scsih_raid_device_find_by_id (struct MPT3SAS_ADAPTER*,scalar_t__,scalar_t__) ;
 struct sas_rphy* dev_to_rphy (int ) ;
 struct Scsi_Host* dev_to_shost (TYPE_2__*) ;
 int kfree (struct MPT3SAS_TARGET*) ;
 struct _sas_device* mpt3sas_scsih_sas_device_find_by_sas_address (struct MPT3SAS_ADAPTER*,int ) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_target_destroy(struct scsi_target *starget)
{
 struct Scsi_Host *shost = dev_to_shost(&starget->dev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
 struct MPT3SAS_TARGET *sas_target_priv_data;
 struct _sas_device *sas_device;
 struct _raid_device *raid_device;
 unsigned long flags;
 struct sas_rphy *rphy;

 sas_target_priv_data = starget->hostdata;
 if (!sas_target_priv_data)
  return;

 if (starget->channel == RAID_CHANNEL) {
  spin_lock_irqsave(&ioc->raid_device_lock, flags);
  raid_device = _scsih_raid_device_find_by_id(ioc, starget->id,
      starget->channel);
  if (raid_device) {
   raid_device->starget = ((void*)0);
   raid_device->sdev = ((void*)0);
  }
  spin_unlock_irqrestore(&ioc->raid_device_lock, flags);
  goto out;
 }

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 rphy = dev_to_rphy(starget->dev.parent);
 sas_device = mpt3sas_scsih_sas_device_find_by_sas_address(ioc,
    rphy->identify.sas_address);
 if (sas_device && (sas_device->starget == starget) &&
     (sas_device->id == starget->id) &&
     (sas_device->channel == starget->channel))
  sas_device->starget = ((void*)0);

 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);

 out:
 kfree(sas_target_priv_data);
 starget->hostdata = ((void*)0);
}
