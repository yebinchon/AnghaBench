
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct MPT3SAS_ADAPTER {int scsiio_depth; int scsi_lookup_lock; TYPE_3__* scsi_lookup; } ;
struct TYPE_6__ {TYPE_2__* scmd; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int id; int channel; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8
_scsih_scsi_lookup_find_by_target(struct MPT3SAS_ADAPTER *ioc, int id,
 int channel)
{
 u8 found;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&ioc->scsi_lookup_lock, flags);
 found = 0;
 for (i = 0 ; i < ioc->scsiio_depth; i++) {
  if (ioc->scsi_lookup[i].scmd &&
      (ioc->scsi_lookup[i].scmd->device->id == id &&
      ioc->scsi_lookup[i].scmd->device->channel == channel)) {
   found = 1;
   goto out;
  }
 }
 out:
 spin_unlock_irqrestore(&ioc->scsi_lookup_lock, flags);
 return found;
}
