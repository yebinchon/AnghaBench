
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_ioports {scalar_t__ ctl_addr; } ;
struct ata_port {TYPE_1__* ops; int ctl; int last_ctl; struct ata_ioports ioaddr; } ;
struct TYPE_2__ {int (* sff_irq_clear ) (struct ata_port*) ;int (* sff_check_status ) (struct ata_port*) ;} ;


 int ATA_NIEN ;
 int iowrite8 (int ,scalar_t__) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;

void ata_sff_freeze(struct ata_port *ap)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;

 ap->ctl |= ATA_NIEN;
 ap->last_ctl = ap->ctl;

 if (ioaddr->ctl_addr)
  iowrite8(ap->ctl, ioaddr->ctl_addr);





 ap->ops->sff_check_status(ap);

 ap->ops->sff_irq_clear(ap);
}
