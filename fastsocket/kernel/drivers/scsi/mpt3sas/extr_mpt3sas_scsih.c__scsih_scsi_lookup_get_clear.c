
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct scsi_cmnd {int dummy; } ;
struct MPT3SAS_ADAPTER {int scsi_lookup_lock; TYPE_1__* scsi_lookup; } ;
struct TYPE_2__ {struct scsi_cmnd* scmd; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline struct scsi_cmnd *
_scsih_scsi_lookup_get_clear(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
 unsigned long flags;
 struct scsi_cmnd *scmd;

 spin_lock_irqsave(&ioc->scsi_lookup_lock, flags);
 scmd = ioc->scsi_lookup[smid - 1].scmd;
 ioc->scsi_lookup[smid - 1].scmd = ((void*)0);
 spin_unlock_irqrestore(&ioc->scsi_lookup_lock, flags);

 return scmd;
}
