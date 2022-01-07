
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvscsi_adapter {int hw_lock; int work; int workqueue; scalar_t__ use_msg; scalar_t__ use_msix; scalar_t__ use_msi; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int PVSCSI_INTR_ALL_SUPPORTED ;
 scalar_t__ pvscsi_msg_pending (struct pvscsi_adapter*) ;
 int pvscsi_process_completion_ring (struct pvscsi_adapter*) ;
 int pvscsi_read_intr_status (struct pvscsi_adapter*) ;
 int pvscsi_write_intr_status (void*,int) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t pvscsi_isr(int irq, void *devp)
{
 struct pvscsi_adapter *adapter = devp;
 int handled;

 if (adapter->use_msi || adapter->use_msix)
  handled = 1;
 else {
  u32 val = pvscsi_read_intr_status(adapter);
  handled = (val & PVSCSI_INTR_ALL_SUPPORTED) != 0;
  if (handled)
   pvscsi_write_intr_status(devp, val);
 }

 if (handled) {
  unsigned long flags;

  spin_lock_irqsave(&adapter->hw_lock, flags);

  pvscsi_process_completion_ring(adapter);
  if (adapter->use_msg && pvscsi_msg_pending(adapter))
   queue_work(adapter->workqueue, &adapter->work);

  spin_unlock_irqrestore(&adapter->hw_lock, flags);
 }

 return IRQ_RETVAL(handled);
}
