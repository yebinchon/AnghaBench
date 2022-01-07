
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fnic {unsigned long state_flags; TYPE_1__* lport; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int spin_is_locked (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void
__fnic_set_state_flags(struct fnic *fnic, unsigned long st_flags,
   unsigned long clearbits)
{
 struct Scsi_Host *host = fnic->lport->host;
 int sh_locked = spin_is_locked(host->host_lock);
 unsigned long flags = 0;

 if (!sh_locked)
  spin_lock_irqsave(host->host_lock, flags);

 if (clearbits)
  fnic->state_flags &= ~st_flags;
 else
  fnic->state_flags |= st_flags;

 if (!sh_locked)
  spin_unlock_irqrestore(host->host_lock, flags);

 return;
}
