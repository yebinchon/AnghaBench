
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dev; struct MPT3SAS_TARGET* hostdata; } ;
struct scsi_device {int * hostdata; } ;
struct _sas_device {int * starget; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_TARGET {int flags; int num_luns; int sas_address; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; } ;


 int MPT_TARGET_FLAGS_VOLUME ;
 struct Scsi_Host* dev_to_shost (int *) ;
 int kfree (int *) ;
 struct _sas_device* mpt3sas_scsih_sas_device_find_by_sas_address (struct MPT3SAS_ADAPTER*,int ) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_slave_destroy(struct scsi_device *sdev)
{
 struct MPT3SAS_TARGET *sas_target_priv_data;
 struct scsi_target *starget;
 struct Scsi_Host *shost;
 struct MPT3SAS_ADAPTER *ioc;
 struct _sas_device *sas_device;
 unsigned long flags;

 if (!sdev->hostdata)
  return;

 starget = scsi_target(sdev);
 sas_target_priv_data = starget->hostdata;
 sas_target_priv_data->num_luns--;

 shost = dev_to_shost(&starget->dev);
 ioc = shost_priv(shost);

 if (!(sas_target_priv_data->flags & MPT_TARGET_FLAGS_VOLUME)) {
  spin_lock_irqsave(&ioc->sas_device_lock, flags);
  sas_device = mpt3sas_scsih_sas_device_find_by_sas_address(ioc,
     sas_target_priv_data->sas_address);
  if (sas_device && !sas_target_priv_data->num_luns)
   sas_device->starget = ((void*)0);
  spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 }

 kfree(sdev->hostdata);
 sdev->hostdata = ((void*)0);
}
