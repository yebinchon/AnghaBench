
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ultrastor_interrupt (void*) ;

__attribute__((used)) static irqreturn_t do_ultrastor_interrupt(int irq, void *dev_id)
{
    unsigned long flags;
    struct Scsi_Host *dev = dev_id;

    spin_lock_irqsave(dev->host_lock, flags);
    ultrastor_interrupt(dev_id);
    spin_unlock_irqrestore(dev->host_lock, flags);
    return IRQ_HANDLED;
}
