
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int error_handler; } ;


 int __ata_port_freeze (struct ata_port*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ata_eh_freeze_port(struct ata_port *ap)
{
 unsigned long flags;

 if (!ap->ops->error_handler)
  return;

 spin_lock_irqsave(ap->lock, flags);
 __ata_port_freeze(ap);
 spin_unlock_irqrestore(ap->lock, flags);
}
