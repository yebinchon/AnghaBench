
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subch_data_s {int sd_rlock; int sd_wlock; int sd_wq; int sd_subch; int sd_nasid; int sd_rq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SAL_IROUTER_INTR_RECV ;
 int SAL_IROUTER_INTR_XMIT ;
 int ia64_sn_irtr_intr (int ,int ) ;
 int ia64_sn_irtr_intr_disable (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t
scdrv_interrupt(int irq, void *subch_data)
{
 struct subch_data_s *sd = subch_data;
 unsigned long flags;
 int status;

 spin_lock_irqsave(&sd->sd_rlock, flags);
 spin_lock(&sd->sd_wlock);
 status = ia64_sn_irtr_intr(sd->sd_nasid, sd->sd_subch);

 if (status > 0) {
  if (status & SAL_IROUTER_INTR_RECV) {
   wake_up(&sd->sd_rq);
  }
  if (status & SAL_IROUTER_INTR_XMIT) {
   ia64_sn_irtr_intr_disable
       (sd->sd_nasid, sd->sd_subch,
        SAL_IROUTER_INTR_XMIT);
   wake_up(&sd->sd_wq);
  }
 }
 spin_unlock(&sd->sd_wlock);
 spin_unlock_irqrestore(&sd->sd_rlock, flags);
 return IRQ_HANDLED;
}
