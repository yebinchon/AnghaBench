
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;


 int eata_pio_int_handler (int,void*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t do_eata_pio_int_handler(int irq, void *dev_id)
{
 unsigned long flags;
 struct Scsi_Host *dev = dev_id;
 irqreturn_t ret;

 spin_lock_irqsave(dev->host_lock, flags);
 ret = eata_pio_int_handler(irq, dev_id);
 spin_unlock_irqrestore(dev->host_lock, flags);
 return ret;
}
