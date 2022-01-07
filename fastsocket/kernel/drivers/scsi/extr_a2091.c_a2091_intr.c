
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {unsigned int ISTR; } ;


 TYPE_1__* DMA (struct Scsi_Host*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int ISTR_INTS ;
 unsigned int ISTR_INT_F ;
 unsigned int ISTR_INT_P ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wd33c93_intr (struct Scsi_Host*) ;

__attribute__((used)) static irqreturn_t a2091_intr (int irq, void *_instance)
{
    unsigned long flags;
    unsigned int status;
    struct Scsi_Host *instance = (struct Scsi_Host *)_instance;

    status = DMA(instance)->ISTR;
    if (!(status & (ISTR_INT_F|ISTR_INT_P)) || !(status & ISTR_INTS))
 return IRQ_NONE;

    spin_lock_irqsave(instance->host_lock, flags);
    wd33c93_intr(instance);
    spin_unlock_irqrestore(instance->host_lock, flags);
    return IRQ_HANDLED;
}
