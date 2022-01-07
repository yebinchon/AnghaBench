
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_3__ {scalar_t__ ReasonCode; int VolDevHandle; int NewValue; } ;
typedef TYPE_1__ Mpi2EventDataIrVolume_t ;


 scalar_t__ MPI2_EVENT_IR_VOLUME_RC_STATE_CHANGED ;
 scalar_t__ MPI2_RAID_VOL_STATE_FAILED ;
 scalar_t__ MPI2_RAID_VOL_STATE_MISSING ;
 int _scsih_set_volume_delete_flag (struct MPT2SAS_ADAPTER*,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void
_scsih_check_volume_delete_events(struct MPT2SAS_ADAPTER *ioc,
    Mpi2EventDataIrVolume_t *event_data)
{
 u32 state;

 if (event_data->ReasonCode != MPI2_EVENT_IR_VOLUME_RC_STATE_CHANGED)
  return;
 state = le32_to_cpu(event_data->NewValue);
 if (state == MPI2_RAID_VOL_STATE_MISSING || state ==
     MPI2_RAID_VOL_STATE_FAILED)
  _scsih_set_volume_delete_flag(ioc,
      le16_to_cpu(event_data->VolDevHandle));
}
