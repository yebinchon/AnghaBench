
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct scsi_cmnd {int dummy; } ;
struct MPT3SAS_ADAPTER {int scsiio_depth; int scsi_lookup_lock; TYPE_1__* scsi_lookup; } ;
struct TYPE_2__ {scalar_t__ smid; struct scsi_cmnd* scmd; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u16
_scsih_scsi_lookup_find_by_scmd(struct MPT3SAS_ADAPTER *ioc, struct scsi_cmnd
 *scmd)
{
 u16 smid;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&ioc->scsi_lookup_lock, flags);
 smid = 0;
 for (i = 0; i < ioc->scsiio_depth; i++) {
  if (ioc->scsi_lookup[i].scmd == scmd) {
   smid = ioc->scsi_lookup[i].smid;
   goto out;
  }
 }
 out:
 spin_unlock_irqrestore(&ioc->scsi_lookup_lock, flags);
 return smid;
}
