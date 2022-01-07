
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_ioports {int ctl_addr; } ;
struct ata_port {TYPE_1__* ops; int ctl; int last_ctl; struct ata_ioports ioaddr; } ;
struct TYPE_2__ {int (* sff_irq_clear ) (struct ata_port*) ;} ;


 int ATA_NIEN ;
 int ata_wait_idle (struct ata_port*) ;
 int out_be32 (int ,int ) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static u8 scc_irq_on (struct ata_port *ap)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;
 u8 tmp;

 ap->ctl &= ~ATA_NIEN;
 ap->last_ctl = ap->ctl;

 out_be32(ioaddr->ctl_addr, ap->ctl);
 tmp = ata_wait_idle(ap);

 ap->ops->sff_irq_clear(ap);

 return tmp;
}
