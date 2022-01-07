
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;
 int xpc_activate_IRQ_rcvd ;
 int xpc_activate_IRQ_rcvd_lock ;
 int xpc_activate_IRQ_wq ;

__attribute__((used)) static irqreturn_t
xpc_handle_activate_IRQ_sn2(int irq, void *dev_id)
{
 unsigned long irq_flags;

 spin_lock_irqsave(&xpc_activate_IRQ_rcvd_lock, irq_flags);
 xpc_activate_IRQ_rcvd++;
 spin_unlock_irqrestore(&xpc_activate_IRQ_rcvd_lock, irq_flags);

 wake_up_interruptible(&xpc_activate_IRQ_wq);
 return IRQ_HANDLED;
}
