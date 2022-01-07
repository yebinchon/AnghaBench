
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct MPT3SAS_ADAPTER {scalar_t__ pending_io_count; size_t scsiio_depth; int reset_wq; int scsi_lookup_lock; TYPE_1__* scsi_lookup; } ;
struct TYPE_2__ {int cb_idx; } ;


 int CAN_SLEEP ;
 int HZ ;
 int MPI2_IOC_STATE_MASK ;
 int MPI2_IOC_STATE_OPERATIONAL ;
 int mpt3sas_base_get_iocstate (struct MPT3SAS_ADAPTER*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static void
_wait_for_commands_to_complete(struct MPT3SAS_ADAPTER *ioc, int sleep_flag)
{
 u32 ioc_state;
 unsigned long flags;
 u16 i;

 ioc->pending_io_count = 0;
 if (sleep_flag != CAN_SLEEP)
  return;

 ioc_state = mpt3sas_base_get_iocstate(ioc, 0);
 if ((ioc_state & MPI2_IOC_STATE_MASK) != MPI2_IOC_STATE_OPERATIONAL)
  return;


 spin_lock_irqsave(&ioc->scsi_lookup_lock, flags);
 for (i = 0; i < ioc->scsiio_depth; i++)
  if (ioc->scsi_lookup[i].cb_idx != 0xFF)
   ioc->pending_io_count++;
 spin_unlock_irqrestore(&ioc->scsi_lookup_lock, flags);

 if (!ioc->pending_io_count)
  return;


 wait_event_timeout(ioc->reset_wq, ioc->pending_io_count == 0, 10 * HZ);
}
