
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct scsi_target {struct MPT2SAS_TARGET* hostdata; } ;
struct _sas_device {struct scsi_target* starget; scalar_t__ volume_wwid; scalar_t__ volume_handle; } ;
struct MPT2SAS_TARGET {int flags; } ;
struct MPT2SAS_ADAPTER {int sas_device_lock; int pd_handles; } ;
struct TYPE_3__ {int PhysDiskDevHandle; } ;
typedef TYPE_1__ Mpi2EventIrConfigElement_t ;


 int MPT_TARGET_FLAGS_RAID_COMPONENT ;
 int _scsih_reprobe_lun ;
 struct _sas_device* _scsih_sas_device_find_by_handle (struct MPT2SAS_ADAPTER*,int ) ;
 int clear_bit (int ,int ) ;
 int le16_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int starget_for_each_device (struct scsi_target*,int *,int ) ;

__attribute__((used)) static void
_scsih_sas_pd_expose(struct MPT2SAS_ADAPTER *ioc,
    Mpi2EventIrConfigElement_t *element)
{
 struct _sas_device *sas_device;
 struct scsi_target *starget = ((void*)0);
 struct MPT2SAS_TARGET *sas_target_priv_data;
 unsigned long flags;
 u16 handle = le16_to_cpu(element->PhysDiskDevHandle);

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_device = _scsih_sas_device_find_by_handle(ioc, handle);
 if (sas_device) {
  sas_device->volume_handle = 0;
  sas_device->volume_wwid = 0;
  clear_bit(handle, ioc->pd_handles);
  if (sas_device->starget && sas_device->starget->hostdata) {
   starget = sas_device->starget;
   sas_target_priv_data = starget->hostdata;
   sas_target_priv_data->flags &=
       ~MPT_TARGET_FLAGS_RAID_COMPONENT;
  }
 }
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 if (!sas_device)
  return;


 if (starget)
  starget_for_each_device(starget, ((void*)0), _scsih_reprobe_lun);
}
