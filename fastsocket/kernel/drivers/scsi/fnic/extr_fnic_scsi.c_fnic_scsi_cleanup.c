
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctl_src_addr; } ;
struct fnic {scalar_t__ state; int fnic_lock; TYPE_1__ ctlr; } ;
struct fc_lport {int dummy; } ;
typedef enum fnic_state { ____Placeholder_fnic_state } fnic_state ;


 scalar_t__ FNIC_IN_FC_TRANS_ETH_MODE ;
 scalar_t__ fnic_fw_reset_handler (struct fnic*) ;
 int fnic_update_mac_locked (struct fnic*,int ) ;
 struct fnic* lport_priv (struct fc_lport*) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void fnic_scsi_cleanup(struct fc_lport *lp)
{
 unsigned long flags;
 enum fnic_state old_state;
 struct fnic *fnic = lport_priv(lp);


retry_fw_reset:
 spin_lock_irqsave(&fnic->fnic_lock, flags);
 if (unlikely(fnic->state == FNIC_IN_FC_TRANS_ETH_MODE)) {

  spin_unlock_irqrestore(&fnic->fnic_lock, flags);
  schedule_timeout(msecs_to_jiffies(100));
  goto retry_fw_reset;
 }
 old_state = fnic->state;
 fnic->state = FNIC_IN_FC_TRANS_ETH_MODE;
 fnic_update_mac_locked(fnic, fnic->ctlr.ctl_src_addr);
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 if (fnic_fw_reset_handler(fnic)) {
  spin_lock_irqsave(&fnic->fnic_lock, flags);
  if (fnic->state == FNIC_IN_FC_TRANS_ETH_MODE)
   fnic->state = old_state;
  spin_unlock_irqrestore(&fnic->fnic_lock, flags);
 }

}
