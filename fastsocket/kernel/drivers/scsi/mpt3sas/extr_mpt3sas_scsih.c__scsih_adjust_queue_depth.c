
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int tagged_supported; struct MPT3SAS_DEVICE* hostdata; struct Scsi_Host* host; } ;
struct _sas_device {int device_info; } ;
struct Scsi_Host {int can_queue; } ;
struct MPT3SAS_TARGET {int flags; int sas_address; } ;
struct MPT3SAS_DEVICE {struct MPT3SAS_TARGET* sas_target; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; } ;


 int MPI2_SAS_DEVICE_INFO_SATA_DEVICE ;
 int MPT3SAS_SATA_QUEUE_DEPTH ;
 int MPT_TARGET_FLAGS_VOLUME ;
 struct _sas_device* mpt3sas_scsih_sas_device_find_by_sas_address (struct MPT3SAS_ADAPTER*,int ) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int scsi_get_tag_type (struct scsi_device*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_adjust_queue_depth(struct scsi_device *sdev, int qdepth)
{
 struct Scsi_Host *shost = sdev->host;
 int max_depth;
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
 struct MPT3SAS_DEVICE *sas_device_priv_data;
 struct MPT3SAS_TARGET *sas_target_priv_data;
 struct _sas_device *sas_device;
 unsigned long flags;

 max_depth = shost->can_queue;


 sas_device_priv_data = sdev->hostdata;
 if (!sas_device_priv_data)
  goto not_sata;
 sas_target_priv_data = sas_device_priv_data->sas_target;
 if (!sas_target_priv_data)
  goto not_sata;
 if ((sas_target_priv_data->flags & MPT_TARGET_FLAGS_VOLUME))
  goto not_sata;
 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_device = mpt3sas_scsih_sas_device_find_by_sas_address(ioc,
    sas_device_priv_data->sas_target->sas_address);
 if (sas_device && sas_device->device_info &
     MPI2_SAS_DEVICE_INFO_SATA_DEVICE)
  max_depth = MPT3SAS_SATA_QUEUE_DEPTH;
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);

 not_sata:

 if (!sdev->tagged_supported)
  max_depth = 1;
 if (qdepth > max_depth)
  qdepth = max_depth;
 scsi_adjust_queue_depth(sdev, scsi_get_tag_type(sdev), qdepth);
}
