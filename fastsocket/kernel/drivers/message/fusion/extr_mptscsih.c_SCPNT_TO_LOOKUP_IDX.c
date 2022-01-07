
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct TYPE_3__ {int req_depth; int scsi_lookup_lock; struct scsi_cmnd** ScsiLookup; } ;
typedef TYPE_1__ MPT_ADAPTER ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
SCPNT_TO_LOOKUP_IDX(MPT_ADAPTER *ioc, struct scsi_cmnd *sc)
{
 unsigned long flags;
 int i, index=-1;

 spin_lock_irqsave(&ioc->scsi_lookup_lock, flags);
 for (i = 0; i < ioc->req_depth; i++) {
  if (ioc->ScsiLookup[i] == sc) {
   index = i;
   goto out;
  }
 }

 out:
 spin_unlock_irqrestore(&ioc->scsi_lookup_lock, flags);
 return index;
}
