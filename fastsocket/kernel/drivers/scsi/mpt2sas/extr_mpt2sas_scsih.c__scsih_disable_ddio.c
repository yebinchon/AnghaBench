
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct _raid_device {scalar_t__ direct_io_enabled; } ;
struct MPT2SAS_ADAPTER {int raid_device_lock; } ;
struct TYPE_6__ {int IOCStatus; } ;
struct TYPE_5__ {int DevHandle; } ;
typedef TYPE_1__ Mpi2RaidVolPage1_t ;
typedef TYPE_2__ Mpi2ConfigReply_t ;


 int MPI2_IOCSTATUS_CONFIG_INVALID_PAGE ;
 int MPI2_IOCSTATUS_MASK ;
 int MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE ;
 struct _raid_device* _scsih_raid_device_find_by_handle (struct MPT2SAS_ADAPTER*,int) ;
 int le16_to_cpu (int ) ;
 int mpt2sas_config_get_raid_volume_pg1 (struct MPT2SAS_ADAPTER*,TYPE_2__*,TYPE_1__*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_disable_ddio(struct MPT2SAS_ADAPTER *ioc)
{
 Mpi2RaidVolPage1_t vol_pg1;
 Mpi2ConfigReply_t mpi_reply;
 struct _raid_device *raid_device;
 u16 handle;
 u16 ioc_status;
 unsigned long flags;

 handle = 0xFFFF;
 while (!(mpt2sas_config_get_raid_volume_pg1(ioc, &mpi_reply,
     &vol_pg1, MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE, handle))) {
  ioc_status = le16_to_cpu(mpi_reply.IOCStatus) &
      MPI2_IOCSTATUS_MASK;
  if (ioc_status == MPI2_IOCSTATUS_CONFIG_INVALID_PAGE)
   break;
  handle = le16_to_cpu(vol_pg1.DevHandle);
  spin_lock_irqsave(&ioc->raid_device_lock, flags);
  raid_device = _scsih_raid_device_find_by_handle(ioc, handle);
  if (raid_device)
   raid_device->direct_io_enabled = 0;
  spin_unlock_irqrestore(&ioc->raid_device_lock, flags);
 }
 return;
}
