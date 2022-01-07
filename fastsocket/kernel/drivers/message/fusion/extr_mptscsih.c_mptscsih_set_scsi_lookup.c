
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct TYPE_3__ {int scsi_lookup_lock; struct scsi_cmnd** ScsiLookup; } ;
typedef TYPE_1__ MPT_ADAPTER ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
mptscsih_set_scsi_lookup(MPT_ADAPTER *ioc, int i, struct scsi_cmnd *scmd)
{
 unsigned long flags;

 spin_lock_irqsave(&ioc->scsi_lookup_lock, flags);
 ioc->ScsiLookup[i] = scmd;
 spin_unlock_irqrestore(&ioc->scsi_lookup_lock, flags);
}
