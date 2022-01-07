
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int inquiry_len; int queue_depth; int* inquiry; int scsi_level; int ordered_tags; int simple_tags; int tagged_supported; struct MPT2SAS_DEVICE* hostdata; struct Scsi_Host* host; } ;
struct _sas_device {int device_info; } ;
struct Scsi_Host {int can_queue; } ;
struct MPT2SAS_TARGET {int flags; int sas_address; } ;
struct MPT2SAS_DEVICE {struct MPT2SAS_TARGET* sas_target; } ;
struct MPT2SAS_ADAPTER {int sas_device_lock; } ;


 int EOPNOTSUPP ;
 int KERN_INFO ;
 int MPI2_SAS_DEVICE_INFO_SATA_DEVICE ;
 int MPT2SAS_SATA_QUEUE_DEPTH ;
 int MPT_TARGET_FLAGS_VOLUME ;
 int MSG_SIMPLE_TAG ;
 int SCSI_QDEPTH_DEFAULT ;
 struct _sas_device* mpt2sas_scsih_sas_device_find_by_sas_address (struct MPT2SAS_ADAPTER*,int ) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int,int) ;
 int sdev_printk (int ,struct scsi_device*,char*,int,int ,int ,int ,int ,int) ;
 struct MPT2SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
_scsih_change_queue_depth(struct scsi_device *sdev, int qdepth, int reason)
{
 struct Scsi_Host *shost = sdev->host;
 int max_depth;
 int tag_type;
 struct MPT2SAS_ADAPTER *ioc = shost_priv(shost);
 struct MPT2SAS_DEVICE *sas_device_priv_data;
 struct MPT2SAS_TARGET *sas_target_priv_data;
 struct _sas_device *sas_device;
 unsigned long flags;

 if (reason != SCSI_QDEPTH_DEFAULT)
  return -EOPNOTSUPP;

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
 sas_device = mpt2sas_scsih_sas_device_find_by_sas_address(ioc,
    sas_device_priv_data->sas_target->sas_address);
 if (sas_device && sas_device->device_info &
     MPI2_SAS_DEVICE_INFO_SATA_DEVICE)
  max_depth = MPT2SAS_SATA_QUEUE_DEPTH;
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);

 not_sata:

 if (!sdev->tagged_supported)
  max_depth = 1;
 if (qdepth > max_depth)
  qdepth = max_depth;
 tag_type = (qdepth == 1) ? 0 : MSG_SIMPLE_TAG;
 scsi_adjust_queue_depth(sdev, tag_type, qdepth);

 if (sdev->inquiry_len > 7)
  sdev_printk(KERN_INFO, sdev, "qdepth(%d), tagged(%d), "
  "simple(%d), ordered(%d), scsi_level(%d), cmd_que(%d)\n",
  sdev->queue_depth, sdev->tagged_supported, sdev->simple_tags,
  sdev->ordered_tags, sdev->scsi_level,
  (sdev->inquiry[7] & 2) >> 1);

 return sdev->queue_depth;
}
