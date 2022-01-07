
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ata_port* ap; } ;
struct domain_device {TYPE_1__ sata_dev; } ;
struct ata_eh_info {int action; int err_mask; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;
struct ata_port {int lock; TYPE_2__ link; } ;


 int AC_ERR_TIMEOUT ;
 int ATA_EH_RESET ;
 int ata_port_schedule_eh (struct ata_port*) ;
 int dev_is_sata (struct domain_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void sas_ata_schedule_reset(struct domain_device *dev)
{
 struct ata_eh_info *ehi;
 struct ata_port *ap;
 unsigned long flags;

 if (!dev_is_sata(dev))
  return;

 ap = dev->sata_dev.ap;
 ehi = &ap->link.eh_info;

 spin_lock_irqsave(ap->lock, flags);
 ehi->err_mask |= AC_ERR_TIMEOUT;
 ehi->action |= ATA_EH_RESET;
 ata_port_schedule_eh(ap);
 spin_unlock_irqrestore(ap->lock, flags);
}
