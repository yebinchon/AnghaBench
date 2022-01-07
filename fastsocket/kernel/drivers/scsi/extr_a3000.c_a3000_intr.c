
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_6__ {unsigned int ISTR; } ;
struct TYPE_5__ {int host_lock; } ;


 TYPE_3__* DMA (TYPE_1__*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int ISTR_INTS ;
 unsigned int ISTR_INT_P ;
 TYPE_1__* a3000_host ;
 int printk (char*,unsigned int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wd33c93_intr (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t a3000_intr (int irq, void *dummy)
{
 unsigned long flags;
 unsigned int status = DMA(a3000_host)->ISTR;

 if (!(status & ISTR_INT_P))
  return IRQ_NONE;
 if (status & ISTR_INTS)
 {
  spin_lock_irqsave(a3000_host->host_lock, flags);
  wd33c93_intr (a3000_host);
  spin_unlock_irqrestore(a3000_host->host_lock, flags);
  return IRQ_HANDLED;
 }
 printk("Non-serviced A3000 SCSI-interrupt? ISTR = %02x\n", status);
 return IRQ_NONE;
}
